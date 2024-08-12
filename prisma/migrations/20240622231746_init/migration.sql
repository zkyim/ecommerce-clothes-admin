/*
  Warnings:

  - You are about to drop the column `stoerId` on the `Order` table. All the data in the column will be lost.
  - Added the required column `storeId` to the `Order` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Order" DROP CONSTRAINT "Order_stoerId_fkey";

-- DropIndex
DROP INDEX "Order_stoerId_idx";

-- AlterTable
ALTER TABLE "Order" DROP COLUMN "stoerId",
ADD COLUMN     "storeId" TEXT NOT NULL;

-- CreateIndex
CREATE INDEX "Order_storeId_idx" ON "Order"("storeId");

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_storeId_fkey" FOREIGN KEY ("storeId") REFERENCES "store"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
