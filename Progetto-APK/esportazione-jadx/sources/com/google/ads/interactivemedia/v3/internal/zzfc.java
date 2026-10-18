package com.google.ads.interactivemedia.v3.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.net.URL;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p052g4.h;
import p052g4.i;

/* JADX INFO: loaded from: classes.dex */
public final class zzfc {
    private final zzuv zza;
    private final float zzb;

    public zzfc(ExecutorService executorService, float f8) {
        this.zzb = f8;
        this.zza = zzvb.zza(executorService);
    }

    public final /* synthetic */ Bitmap zza(String str, com.google.ads.interactivemedia.v3.impl.data.zzbo zzboVar) {
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(new URL(str).openConnection().getInputStream());
        if (bitmapDecodeStream == null) {
            return null;
        }
        if (zzboVar.width != bitmapDecodeStream.getWidth() || zzboVar.height != bitmapDecodeStream.getHeight()) {
            return bitmapDecodeStream;
        }
        double d6 = this.zzb;
        if (Math.copySign(1.0d - d6, 1.0d) <= 0.1d || d6 == 1.0d) {
            return bitmapDecodeStream;
        }
        if (Double.isNaN(1.0d) && Double.isNaN(d6)) {
            return bitmapDecodeStream;
        }
        return Bitmap.createScaledBitmap(bitmapDecodeStream, (int) (this.zzb * bitmapDecodeStream.getWidth()), (int) (this.zzb * bitmapDecodeStream.getHeight()), true);
    }

    public final h zzb(final String str, final com.google.ads.interactivemedia.v3.impl.data.zzbo zzboVar) {
        i iVar = new i();
        zzuk.zze(this.zza.zza(new Callable() { // from class: com.google.ads.interactivemedia.v3.internal.zzfa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zza(str, zzboVar);
            }
        }), new zzfb(this, iVar, str), this.zza);
        return iVar.f25345a;
    }
}
