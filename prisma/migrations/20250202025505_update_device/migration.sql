/*
  Warnings:

  - You are about to drop the column `family` on the `Device` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Device" DROP COLUMN "family",
ADD COLUMN     "customer" TEXT;
