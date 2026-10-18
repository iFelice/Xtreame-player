package androidx.leanback.widget;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.internal.ads.C1074av;
import com.google.android.gms.internal.ads.C1314fd;
import com.google.android.gms.internal.ads.InterfaceC1218dk;
import com.google.android.gms.internal.ads.InterfaceC1366gd;
import com.google.android.gms.internal.ads.InterfaceC1746nv;
import com.google.android.gms.internal.ads.InterfaceC1942rk;
import com.google.android.gms.internal.ads.InterfaceC2247xd;
import com.google.android.gms.internal.pal.AbstractC2737i4;
import com.google.android.gms.internal.pal.InterfaceC2697d4;
import com.google.android.gms.internal.pal.Q3;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* JADX INFO: renamed from: androidx.leanback.widget.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0484j implements S3.b, InterfaceC1942rk, InterfaceC1218dk, InterfaceC1746nv, InterfaceC2697d4 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9297G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f9298H;

    public /* synthetic */ C0484j(int i8, int i9) {
        this.f9297G = i9;
        this.f9298H = i8;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2697d4
    public final byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws InvalidAlgorithmParameterException {
        int length = bArr.length;
        if (length == this.f9298H) {
            return new Q3(bArr, false).a(bArr2, bArr3);
        }
        throw new InvalidAlgorithmParameterException(p000a.r.f("Unexpected key length: ", length));
    }

    @Override // S3.b
    public final int d(Context context, String str, boolean z7) {
        return 0;
    }

    @Override // S3.b
    public final int l(Context context, String str) {
        return this.f9298H;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2697d4
    public final int zza() {
        switch (this.f9297G) {
            case 2:
                int i8 = this.f9298H;
                if (i8 == 2) {
                    return 10;
                }
                if (i8 == 5) {
                    return 11;
                }
                if (i8 == 29) {
                    return 12;
                }
                if (i8 == 42) {
                    return 16;
                }
                if (i8 != 22) {
                    return i8 != 23 ? 0 : 15;
                }
                return 1073741824;
            case 3:
                return this.f9298H;
            default:
                return this.f9298H;
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2697d4
    public final byte[] zzb() throws GeneralSecurityException {
        int i8 = this.f9298H;
        if (i8 == 16) {
            return AbstractC2737i4.f23865i;
        }
        if (i8 == 32) {
            return AbstractC2737i4.f23866j;
        }
        throw new GeneralSecurityException("Could not determine HPKE AEAD ID");
    }

    public C0484j(int i8, int i9, int i10) {
        this.f9297G = i10;
        if (i10 != 2) {
            this.f9298H = i8;
        } else {
            this.f9298H = i9;
        }
    }

    public C0484j(int i8, p000a.r rVar) {
        this.f9297G = 12;
        this.f9298H = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        switch (this.f9297G) {
            case 4:
                ((p105n3.m) obj).r1(this.f9298H);
                break;
            case 5:
                ((C1074av) obj).r1(this.f9298H);
                break;
            case 6:
                ((p105n3.m) obj).r1(this.f9298H);
                break;
            case 7:
                ((InterfaceC2247xd) obj).d(this.f9298H);
                break;
            default:
                int i8 = this.f9298H;
                C1314fd c1314fd = (C1314fd) ((InterfaceC1366gd) obj);
                Parcel parcelJ0 = c1314fd.j0();
                parcelJ0.writeInt(i8);
                c1314fd.O2(7, parcelJ0);
                break;
        }
    }

    public C0484j(int i8, AbstractC0483i abstractC0483i) {
        this.f9297G = i8;
        if (i8 != 16) {
            this.f9298H = 2;
        }
    }

    public C0484j(int i8, Object obj) {
        this.f9297G = 11;
        this.f9298H = i8;
    }

    public /* synthetic */ C0484j(C0484j c0484j) {
        this.f9297G = 10;
        this.f9298H = c0484j.f9298H;
    }

    public C0484j(int i8) throws InvalidAlgorithmParameterException {
        this.f9297G = 15;
        if (i8 != 16 && i8 != 32) {
            throw new InvalidAlgorithmParameterException(p000a.r.f("Unsupported key length: ", i8));
        }
        this.f9298H = i8;
    }
}
