<?php

namespace App\Controllers;

use App\Models\BukuModel;

class Buku extends BaseController
{
    protected $bukuModel;

    public function __construct()
    {
        $this->bukuModel = new BukuModel();
    }

    public function index()
    {
        // $buku = $this->bukuModel->findall();

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $buku = $this->bukuModel->search($keyword);
        } else {
            $buku = $this->bukuModel;
        }

        $currentPage = $this->request->getVar('page_buku') ? $this->request->getVar('page_buku') : 1;

        $data = [
            'title' => 'Daftar Buku',
            // 'buku' => $this->bukuModel->getBuku(),
            'buku' => $this->bukuModel->paginate(30, 'buku'),
            'pager' => $this->bukuModel->pager,
            'currentPage' =>  $currentPage
        ];

        return view('Buku/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Buku',
            'buku' => $this->bukuModel->getBuku($slug)
        ];
        // jika buku tidak ada di table
        if (empty($data['buku'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul buku' . $slug . ' tidak ditemukan.');
        }

        return view('buku/detail', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Form Tambah Data Buku'
        ];
        return view('buku/create', $data);
    }

    public function save()
    {
        // validasi input
        if (!$this->validate([
            'judul' => 'required|is_unique[buku.judul]'
        ])) {
            $validation = \Config\Services::validation();

            return redirect()->to('/buku/create');
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->bukuModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        session()->setFlashdata('pesan', 'Data berhasil ditambahkan.');

        return redirect()->to('/buku');
    }
}
