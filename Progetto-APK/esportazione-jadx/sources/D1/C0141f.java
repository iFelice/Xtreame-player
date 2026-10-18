package D1;

import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
import okhttp3.HttpUrl;
import p094m0.C3136t;
import pe.hf.black20.R;

/* JADX INFO: renamed from: D1.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0141f implements P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Resources f2181a;

    public C0141f(Resources resources) {
        resources.getClass();
        this.f2181a = resources;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    public final String a(C3136t c3136t) {
        String displayName;
        String[] strArr = new String[2];
        String str = c3136t.f27030d;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        String str2 = HttpUrl.FRAGMENT_ENCODE_SET;
        if (zIsEmpty || "und".equals(str)) {
            displayName = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            Locale localeForLanguageTag = Locale.forLanguageTag(str);
            String str3 = p117p0.M.f28050a;
            Locale locale = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
            displayName = localeForLanguageTag.getDisplayName(locale);
            if (TextUtils.isEmpty(displayName)) {
                displayName = HttpUrl.FRAGMENT_ENCODE_SET;
            } else {
                try {
                    int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
                    displayName = displayName.substring(0, iOffsetByCodePoints).toUpperCase(locale) + displayName.substring(iOffsetByCodePoints);
                } catch (IndexOutOfBoundsException unused) {
                }
            }
        }
        strArr[0] = displayName;
        strArr[1] = b(c3136t);
        String strD = d(strArr);
        if (!TextUtils.isEmpty(strD)) {
            return strD;
        }
        String str4 = c3136t.f27028b;
        if (!TextUtils.isEmpty(str4)) {
            str2 = str4;
        }
        return str2;
    }

    public final String b(C3136t c3136t) {
        int i8 = c3136t.f27032f & 2;
        Resources resources = this.f2181a;
        String string = i8 != 0 ? resources.getString(R.string.exo_track_role_alternate) : HttpUrl.FRAGMENT_ENCODE_SET;
        int i9 = c3136t.f27032f;
        if ((i9 & 4) != 0) {
            string = d(string, resources.getString(R.string.exo_track_role_supplementary));
        }
        if ((i9 & 8) != 0) {
            string = d(string, resources.getString(R.string.exo_track_role_commentary));
        }
        return (i9 & 1088) != 0 ? d(string, resources.getString(R.string.exo_track_role_closed_captions)) : string;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public final String c(C3136t c3136t) {
        String strA;
        String string;
        int i8 = p094m0.O.i(c3136t.f27041o);
        int i9 = c3136t.f27016G;
        int i10 = c3136t.f27049w;
        int i11 = c3136t.f27048v;
        if (i8 == -1) {
            String str = c3136t.f27037k;
            if (p094m0.O.j(str) != null) {
                i8 = 2;
            } else if (p094m0.O.b(str) != null) {
                i8 = 1;
            } else if (i11 != -1 || i10 != -1) {
                i8 = 2;
            } else if (i9 == -1 && c3136t.f27017H == -1) {
                i8 = -1;
            } else {
                i8 = 1;
            }
        }
        Resources resources = this.f2181a;
        String string2 = HttpUrl.FRAGMENT_ENCODE_SET;
        int i12 = c3136t.f27036j;
        if (i8 == 2) {
            String[] strArr = new String[3];
            strArr[0] = b(c3136t);
            strArr[1] = (i11 == -1 || i10 == -1) ? HttpUrl.FRAGMENT_ENCODE_SET : resources.getString(R.string.exo_track_resolution, Integer.valueOf(i11), Integer.valueOf(i10));
            if (i12 != -1) {
                string2 = resources.getString(R.string.exo_track_bitrate, Float.valueOf(i12 / 1000000.0f));
            }
            strArr[2] = string2;
            strA = d(strArr);
        } else if (i8 == 1) {
            String[] strArr2 = new String[3];
            strArr2[0] = a(c3136t);
            if (i9 == -1 || i9 < 1) {
                string = HttpUrl.FRAGMENT_ENCODE_SET;
            } else if (i9 == 1) {
                string = resources.getString(R.string.exo_track_mono);
            } else if (i9 == 2) {
                string = resources.getString(R.string.exo_track_stereo);
            } else if (i9 == 6 || i9 == 7) {
                string = resources.getString(R.string.exo_track_surround_5_point_1);
            } else {
                string = i9 != 8 ? resources.getString(R.string.exo_track_surround) : resources.getString(R.string.exo_track_surround_7_point_1);
            }
            strArr2[1] = string;
            if (i12 != -1) {
                string2 = resources.getString(R.string.exo_track_bitrate, Float.valueOf(i12 / 1000000.0f));
            }
            strArr2[2] = string2;
            strA = d(strArr2);
        } else {
            strA = a(c3136t);
        }
        if (!strA.isEmpty()) {
            return strA;
        }
        String str2 = c3136t.f27030d;
        return (str2 == null || str2.trim().isEmpty()) ? resources.getString(R.string.exo_track_unknown) : resources.getString(R.string.exo_track_unknown_name, str2);
    }

    public final String d(String... strArr) {
        String string = HttpUrl.FRAGMENT_ENCODE_SET;
        for (String str : strArr) {
            if (!str.isEmpty()) {
                string = TextUtils.isEmpty(string) ? str : this.f2181a.getString(R.string.exo_item_list, string, str);
            }
        }
        return string;
    }
}
