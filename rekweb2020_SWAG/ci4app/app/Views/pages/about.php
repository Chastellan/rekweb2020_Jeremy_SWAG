<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Tentang Kami</h2>
            <?php foreach ($Tentang as $a) : ?>
                <ul>
                    <li><?= $a['Nama']; ?></li>
                    <li><?= $a['Nrp']; ?></li>
                    <li><?= $a['E-mail']; ?></li>
                </ul>
            <?php endforeach ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>