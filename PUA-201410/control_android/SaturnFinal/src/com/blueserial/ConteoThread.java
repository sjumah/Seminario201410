package com.blueserial;


public class ConteoThread extends Thread{
	private long tIni;
	private long tTres;
	private long tUno;
	private long tCero;
	private Saturn chat;
	private boolean abortado;
	
	public ConteoThread(Saturn chat) {
		this.chat=chat;
		abortado=true;
	}

	@Override
	public void run() {	
		
		abortado=false;
		tIni=System.currentTimeMillis();
		/*
		tTres=tIni+7*60*1000;
		tUno=tIni+9*60*1000;
		tCero=tIni+10*60*1000;
		*/
		//20 minutos de conteo regresivo
		tTres=tIni+17*60*1000;
		tUno=tIni+19*60*1000;
		tCero=tIni+20*60*1000;
		
		long tactual=System.currentTimeMillis();
		//long tactual=tUno;
		//tactual+=tTres-30000;//TODO BORRAR!!!: Versión android Camilo
		chat.sendMessage(Saturn.MESSAGE_DIEZ);
		while(tactual<tTres)
		{			
			try {
				sleep(20);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			if(abortado)
				{
				tIni=System.currentTimeMillis();
				setConteo();
				return;
				}
			
			setConteo();
			tactual=System.currentTimeMillis();
		}
		try {
			sleep(20);
		} catch (InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		chat.sendMessage(Saturn.MESSAGE_TRES);
		
		while(tactual<tUno)
		{
			tactual=System.currentTimeMillis();
			try {
				sleep(20);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			if(abortado)
				{
				tIni=System.currentTimeMillis();
				setConteo();
				return;
				}
			setConteo();
		}
		try {
			sleep(20);
		} catch (InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		chat.sendMessage(Saturn.MESSAGE_UNO);
		
		while(tactual<tCero)
		{
			tactual=System.currentTimeMillis();
			try {
				sleep(20);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			setConteo();
		}
	}
	private void setConteo() {
		long difSeg=(System.currentTimeMillis()-tIni)/1000;
		//int mMos1=9-(int)difSeg/60;
		int mMos1=19-(int)difSeg/60;
		int sMos1=60-(int)difSeg%60;
		if(sMos1==60)
		{
			mMos1++;
			sMos1=0;
		}
		final int mMos=mMos1;
		final int sMos=sMos1;
		chat.getTxtConteo().post(new Runnable() {
			@Override
			public void run() {
				chat.getTxtConteo().setText((mMos<10?"0"+mMos:mMos)+":"+(sMos<10?"0"+sMos:sMos));
				
			}
		});
		
	}

	public void abortar()
	{
		abortado=true;
	}
	
}
