package J;

import A0.O;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class h implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Locale[] f4054c = new Locale[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Locale[] f4055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4056b;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] strArrSplit = "en-Latn".split("-", -1);
        if (strArrSplit.length > 2) {
            new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        } else if (strArrSplit.length > 1) {
            new Locale(strArrSplit[0], strArrSplit[1]);
        } else {
            if (strArrSplit.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(strArrSplit[0]);
        }
    }

    public h(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f4055a = f4054c;
            this.f4056b = HttpUrl.FRAGMENT_ENCODE_SET;
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i8 = 0; i8 < localeArr.length; i8++) {
            Locale locale = localeArr[i8];
            if (locale == null) {
                throw new NullPointerException(O.y("list[", i8, "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i8 < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f4055a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f4056b = sb.toString();
    }

    @Override // J.i
    public final String a() {
        return this.f4056b;
    }

    @Override // J.i
    public final Object b() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        Locale[] localeArr = ((h) obj).f4055a;
        Locale[] localeArr2 = this.f4055a;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i8 = 0; i8 < localeArr2.length; i8++) {
            if (!localeArr2[i8].equals(localeArr[i8])) {
                return false;
            }
        }
        return true;
    }

    @Override // J.i
    public final Locale get(int i8) {
        if (i8 >= 0) {
            Locale[] localeArr = this.f4055a;
            if (i8 < localeArr.length) {
                return localeArr[i8];
            }
        }
        return null;
    }

    public final int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f4055a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @Override // J.i
    public final boolean isEmpty() {
        return this.f4055a.length == 0;
    }

    @Override // J.i
    public final int size() {
        return this.f4055a.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i8 = 0;
        while (true) {
            Locale[] localeArr = this.f4055a;
            if (i8 >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i8]);
            if (i8 < localeArr.length - 1) {
                sb.append(',');
            }
            i8++;
        }
    }
}
