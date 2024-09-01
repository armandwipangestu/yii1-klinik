<?php

class WebUser extends CWebUser
{
    /**
     * Override checkAccess untuk memeriksa peran dan operasi
     *
     * @param string $operation Nama operasi yang akan diperiksa (seperti 'admin')
     * @param array $params Parameter tambahan (tidak digunakan di sini)
     * @param boolean $allowCaching Apakah caching diperbolehkan
     * @return boolean Apakah akses diizinkan
     */
    public function checkAccess($operation, $params = [], $allowCaching = true)
    {
        // Mengambil role dari session
        $userRole = $this->getState('role');

        // Memeriksa apakah operasi yang diberikan sesuai dengan role pengguna
        if ($userRole === $operation) {
            return true;
        }

        // Default behavior dari CWebUser::checkAccess
        return parent::checkAccess($operation, $params, $allowCaching);
    }
}
