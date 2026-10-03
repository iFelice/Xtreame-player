package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class GH implements MH, InterfaceC1256eM, InterfaceC1103bN, InterfaceC1051aN, InterfaceC1581km {
    public static int c(int i8) {
        if (i8 == 20) {
            return 63750;
        }
        if (i8 == 30) {
            return 2250000;
        }
        switch (i8) {
            case 5:
                return 80000;
            case 6:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            default:
                switch (i8) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return 256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "secure-playback".equals(str) && "video/avc".equals(str2);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public boolean b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1103bN
    public int zza(Object obj) {
        Pattern pattern = AbstractC1154cN.f18220a;
        String str = ((PM) obj).f15375a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (Et.f13234a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public MediaCodecInfo zzb(int i8) {
        return MediaCodecList.getCodecInfoAt(i8);
    }

    @Override // com.google.android.gms.internal.ads.MH
    public boolean zzc(Class cls) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.MH
    public LH zzb(Class cls) {
        throw new IllegalStateException("This should never be called.");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1581km
    /* JADX INFO: renamed from: zza, reason: collision with other method in class */
    public void mo4zza(Object obj) {
        ((RN) obj).getClass();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public int zza() {
        return MediaCodecList.getCodecCount();
    }
}
