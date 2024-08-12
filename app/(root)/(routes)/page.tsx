"use client";
import { Modal } from "@/components/ui/modal";
import { useStoreModel } from "@/hooks/use-store-modal";
import { useEffect } from "react";

const SetupPage = () => {
  const onOpen = useStoreModel((state)=>state.onOpen);
  const isOpen = useStoreModel((state)=>state.isOpen);
  useEffect(()=>{
    if(!isOpen) {
      onOpen();
    }
  },[isOpen,onOpen]);
  return null;
}
export default SetupPage;