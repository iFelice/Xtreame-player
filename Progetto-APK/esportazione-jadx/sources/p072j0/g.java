package p072j0;

import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25667c;

    public g(String str, int i8, int i9) {
        this.f25665a = str;
        this.f25666b = i8;
        this.f25667c = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        int i8 = this.f25667c;
        String str = this.f25665a;
        int i9 = this.f25666b;
        if (i9 < 0 || gVar.f25666b < 0) {
            return TextUtils.equals(str, gVar.f25665a) && i8 == gVar.f25667c;
        }
        return TextUtils.equals(str, gVar.f25665a) && i9 == gVar.f25666b && i8 == gVar.f25667c;
    }

    public final int hashCode() {
        return Objects.hash(this.f25665a, Integer.valueOf(this.f25667c));
    }
}
