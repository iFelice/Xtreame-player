package p021c4;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.EnumC2528a2;
import com.google.android.gms.internal.measurement.EnumC2534b2;
import okhttp3.HttpUrl;
import z4.H;
import z4.d0;
import z4.i0;
import z4.r0;

/* JADX INFO: loaded from: classes.dex */
public abstract class n1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f11301a = H.A("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");

    public static int a(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getInt(str, -1);
        } catch (ClassCastException unused) {
            return -1;
        }
    }

    public static String b(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, HttpUrl.FRAGMENT_ENCODE_SET);
        } catch (ClassCastException unused) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
    }

    public static final boolean c(EnumC2528a2 enumC2528a2, i0 i0Var, i0 i0Var2, r0 r0Var, char[] cArr, int i8, int i9, int i10, int i11, int i12, String str, String str2, String str3, boolean z7, boolean z8) {
        int i13;
        int i14;
        int i15;
        m1 m1Var;
        char c8;
        int iD = d(enumC2528a2);
        if (iD > 0) {
            i14 = i10;
            if (i14 == 1) {
                i13 = i9;
                if (i13 != 1) {
                    i14 = 1;
                } else {
                    i14 = 1;
                    i13 = 1;
                }
            } else {
                i13 = i9;
            }
            cArr[iD] = '2';
        } else {
            i13 = i9;
            i14 = i10;
        }
        if (e(enumC2528a2, i0Var2) == EnumC2534b2.PURPOSE_RESTRICTION_NOT_ALLOWED) {
            c8 = '3';
        } else {
            if (enumC2528a2 == EnumC2528a2.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
                i15 = i12;
                if (i15 == 1) {
                    if (r0Var.f31896J.equals(str)) {
                        if (iD > 0 && cArr[iD] != '2') {
                            cArr[iD] = '1';
                        }
                        return true;
                    }
                    i15 = 1;
                }
            } else {
                i15 = i12;
            }
            if (i0Var.containsKey(enumC2528a2) && (m1Var = (m1) i0Var.get(enumC2528a2)) != null) {
                int iOrdinal = m1Var.ordinal();
                EnumC2534b2 enumC2534b2 = EnumC2534b2.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST;
                if (iOrdinal != 0) {
                    EnumC2534b2 enumC2534b3 = EnumC2534b2.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                    if (iOrdinal != 1) {
                        if (iOrdinal == 2) {
                            return e(enumC2528a2, i0Var2) == enumC2534b2 ? h(enumC2528a2, cArr, i8, i13, i14, i11, i15, str3, z7, z8) : g(enumC2528a2, cArr, i8, i13, i14, i11, i15, str2, z7, z8);
                        }
                        if (iOrdinal == 3) {
                            return e(enumC2528a2, i0Var2) == enumC2534b3 ? g(enumC2528a2, cArr, i8, i13, i14, i11, i15, str2, z7, z8) : h(enumC2528a2, cArr, i8, i13, i14, i11, i15, str3, z7, z8);
                        }
                        c8 = '0';
                    } else if (e(enumC2528a2, i0Var2) != enumC2534b3) {
                        return h(enumC2528a2, cArr, i8, i13, i14, i11, i15, str3, z7, z8);
                    }
                } else if (e(enumC2528a2, i0Var2) != enumC2534b2) {
                    return g(enumC2528a2, cArr, i8, i13, i14, i11, i15, str2, z7, z8);
                }
                c8 = '8';
            } else {
                c8 = '0';
            }
        }
        if (iD <= 0 || cArr[iD] == '2') {
            return false;
        }
        cArr[iD] = c8;
        return false;
    }

    public static final int d(EnumC2528a2 enumC2528a2) {
        if (enumC2528a2 == EnumC2528a2.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE) {
            return 1;
        }
        if (enumC2528a2 == EnumC2528a2.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE) {
            return 2;
        }
        if (enumC2528a2 == EnumC2528a2.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS) {
            return 3;
        }
        return enumC2528a2 == EnumC2528a2.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE ? 4 : -1;
    }

    public static final EnumC2534b2 e(EnumC2528a2 enumC2528a2, i0 i0Var) {
        Object obj = EnumC2534b2.PURPOSE_RESTRICTION_UNDEFINED;
        Object obj2 = i0Var.get(enumC2528a2);
        if (obj2 != null) {
            obj = obj2;
        }
        return (EnumC2534b2) obj;
    }

    public static final String f(EnumC2528a2 enumC2528a2, String str, String str2) {
        String strValueOf = "0";
        String strValueOf2 = (TextUtils.isEmpty(str) || str.length() < enumC2528a2.zza()) ? "0" : String.valueOf(str.charAt(enumC2528a2.zza() - 1));
        if (!TextUtils.isEmpty(str2) && str2.length() >= enumC2528a2.zza()) {
            strValueOf = String.valueOf(str2.charAt(enumC2528a2.zza() - 1));
        }
        return String.valueOf(strValueOf2).concat(String.valueOf(strValueOf));
    }

    public static final boolean g(EnumC2528a2 enumC2528a2, char[] cArr, int i8, int i9, int i10, int i11, int i12, String str, boolean z7, boolean z8) {
        char c8;
        int iD = d(enumC2528a2);
        if (!z7) {
            c8 = '4';
        } else {
            if (str.length() >= enumC2528a2.zza()) {
                char cCharAt = str.charAt(enumC2528a2.zza() - 1);
                boolean z9 = cCharAt == '1';
                if (iD > 0 && cArr[iD] != '2') {
                    cArr[iD] = cCharAt != '1' ? '6' : '1';
                }
                return z9;
            }
            c8 = '0';
        }
        if (iD > 0 && cArr[iD] != '2') {
            cArr[iD] = c8;
        }
        return false;
    }

    public static final boolean h(EnumC2528a2 enumC2528a2, char[] cArr, int i8, int i9, int i10, int i11, int i12, String str, boolean z7, boolean z8) {
        char c8;
        int iD = d(enumC2528a2);
        if (!z8) {
            c8 = '5';
        } else {
            if (str.length() >= enumC2528a2.zza()) {
                char cCharAt = str.charAt(enumC2528a2.zza() - 1);
                boolean z9 = cCharAt == '1';
                if (iD > 0 && cArr[iD] != '2') {
                    cArr[iD] = cCharAt != '1' ? '7' : '1';
                }
                return z9;
            }
            c8 = '0';
        }
        if (iD > 0 && cArr[iD] != '2') {
            cArr[iD] = c8;
        }
        return false;
    }
}
