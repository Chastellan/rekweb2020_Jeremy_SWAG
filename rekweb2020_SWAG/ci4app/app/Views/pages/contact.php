<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Kontak Kami</h2>
            <?php foreach ($Kontak as $a) : ?>
                <ul>
                    <li><?= $a['E-mail']; ?></li>
                    <li><?= $a['Telepon']; ?></li>
                    <li><?= $a['Alamat']; ?></li>
                </ul>
            <?php endforeach ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>