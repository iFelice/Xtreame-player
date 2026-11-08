package K0;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import com.google.android.gms.internal.ads.InterfaceC1051aN;

/* JADX INFO: loaded from: classes.dex */
public final class x implements w, InterfaceC1051aN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4452G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public MediaCodecInfo[] f4453H;

    public x(boolean z7, boolean z8) {
        int i8 = 1;
        if (!z7 && !z8) {
            i8 = 0;
        }
        this.f4452G = i8;
    }

    @Override // K0.w
    public final boolean D(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    @Override // K0.w
    public final int E() {
        if (this.f4453H == null) {
            this.f4453H = new MediaCodecList(this.f4452G).getCodecInfos();
        }
        return this.f4453H.length;
    }

    @Override // K0.w
    public final boolean M() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public final boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public final boolean b(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    public final void c() {
        if (this.f4453H == null) {
            this.f4453H = new MediaCodecList(this.f4452G).getCodecInfos();
        }
    }

    @Override // K0.w
    public final MediaCodecInfo e(int i8) {
        if (this.f4453H == null) {
            this.f4453H = new MediaCodecList(this.f4452G).getCodecInfos();
        }
        return this.f4453H[i8];
    }

    @Override // K0.w
    public final boolean s(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public final int zza() {
        c();
        return this.f4453H.length;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public final MediaCodecInfo zzb(int i8) {
        c();
        return this.f4453H[i8];
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1051aN
    public final boolean zze() {
        return true;
    }

    public x(boolean z7, boolean z8, boolean z9) {
        this.f4452G = (z7 || z8 || z9) ? 1 : 0;
    }
}
