package p167v3;

import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.EnumC2329z6;
import com.google.android.gms.internal.ads.IJ;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class m implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l f30670b;

    public /* synthetic */ m(l lVar, int i8) {
        this.f30669a = i8;
        this.f30670b = lVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        byte b8;
        int i8 = this.f30669a;
        l lVar = this.f30670b;
        switch (i8) {
            case 0:
                switch (lVar.f30668a) {
                    case "NATIVE":
                        b8 = 2;
                        break;
                    case "INTERSTITIAL":
                        b8 = 1;
                        break;
                    case "REWARDED":
                        b8 = 3;
                        break;
                    case "BANNER":
                        b8 = 0;
                        break;
                    default:
                        b8 = -1;
                        break;
                }
                if (b8 == 0) {
                    return EnumC2329z6.BANNER;
                }
                if (b8 == 1) {
                    return EnumC2329z6.INTERSTITIAL;
                }
                if (b8 != 2) {
                    return b8 != 3 ? EnumC2329z6.AD_INITIATER_UNSPECIFIED : EnumC2329z6.REWARD_BASED_VIDEO_AD;
                }
                return EnumC2329z6.AD_LOADER;
            case 1:
                String lowerCase = lVar.f30668a.toLowerCase(Locale.ROOT);
                Cw.N0(lowerCase);
                return lowerCase;
            default:
                lVar.getClass();
                HashSet hashSet = new HashSet();
                hashSet.add(lVar.f30668a.toLowerCase(Locale.ROOT));
                return hashSet;
        }
    }
}
