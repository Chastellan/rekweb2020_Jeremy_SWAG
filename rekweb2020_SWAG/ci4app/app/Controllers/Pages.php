<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Toko Buku Swag',
            'tes' => ['satu', 'dua', 'tiga']
        ];

        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'Tentang Kami | Toko Buku Swag',
            'Tentang' => [
                [
                    'Nama' => 'Nama : Jeremy Lodewyk Impang',
                    'Nrp' => 'Nrp : 183040005',
                    'E-mail' => 'E-mail : Jeremiledowsky@gmail.com',
                ],
                [
                    'Nama' => 'Nama : Indriana Puspa Saladina',
                    'Nrp' => 'Nrp : 183040007',
                    'E-mail' => 'Email : Indrianapuspasaladina@gmail.com',
                ]
            ]
        ];
        return view('pages/about', $data);
    }


    public function contact()
    {
        $data = [
            'title' => 'Kontak Kami',
            'Kontak' => [
                [
                    'E-mail' => 'E-mail : Jeremiledowsky@gmail.com',
                    'Telepon' => 'Telepon : 085721108380',
                    'Alamat' => 'Alamat : Sumedang',
                ],
                [
                    'E-mail' => 'E-mail : Indrianapuspasaladina@gmail.com',
                    'Telepon' => 'Telepon : 085888386715',
                    'Alamat' => 'Alamat : Karawang',

                ]
            ]
        ];

        return view('pages/contact', $data);
    }


    //--------------------------------------------------------------------

}
