package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1079b implements Gz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18005G;

    public /* synthetic */ C1079b(int i8) {
        this.f18005G = i8;
    }

    @Override // com.google.android.gms.internal.ads.Gz
    public final Object zza() {
        switch (this.f18005G) {
            case 0:
                int i8 = C1130c.f18141a;
                try {
                    Object objInvoke = DefaultVideoFrameProcessor$Factory$Builder.class.getMethod("build", new Class[0]).invoke(DefaultVideoFrameProcessor$Factory$Builder.class.getConstructor(new Class[0]).newInstance(new Object[0]), new Object[0]);
                    objInvoke.getClass();
                    return (InterfaceC0949Ug) objInvoke;
                } catch (Exception e8) {
                    throw new IllegalStateException(e8);
                }
            case 1:
            case 2:
                return -1;
            case 3:
                throw new IllegalStateException();
            case 4:
                return new C1358gK();
            default:
                byte[] bArr = new byte[12];
                C2136vL.f21509h.nextBytes(bArr);
                return Base64.encodeToString(bArr, 10);
        }
    }
}
