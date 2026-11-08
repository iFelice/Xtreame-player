package N;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: N.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0256e implements InterfaceC0255d, InterfaceC0258g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4889G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ClipData f4890H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f4891I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f4892J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Uri f4893K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Bundle f4894L;

    public C0256e(C0256e c0256e) {
        ClipData clipData = c0256e.f4890H;
        clipData.getClass();
        this.f4890H = clipData;
        int i8 = c0256e.f4891I;
        if (i8 < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too low)");
        }
        if (i8 > 5) {
            Locale locale2 = Locale.US;
            throw new IllegalArgumentException("source is out of range of [0, 5] (too high)");
        }
        this.f4891I = i8;
        int i9 = c0256e.f4892J;
        if ((i9 & 1) == i9) {
            this.f4892J = i9;
            this.f4893K = c0256e.f4893K;
            this.f4894L = c0256e.f4894L;
        } else {
            throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i9) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
        }
    }

    @Override // N.InterfaceC0258g
    public final int A() {
        return this.f4891I;
    }

    @Override // N.InterfaceC0258g
    public final ClipData a() {
        return this.f4890H;
    }

    @Override // N.InterfaceC0255d
    public final void b(Uri uri) {
        this.f4893K = uri;
    }

    @Override // N.InterfaceC0255d
    public final C0259h build() {
        return new C0259h(new C0256e(this));
    }

    @Override // N.InterfaceC0258g
    public final int getFlags() {
        return this.f4892J;
    }

    @Override // N.InterfaceC0255d
    public final void setExtras(Bundle bundle) {
        this.f4894L = bundle;
    }

    @Override // N.InterfaceC0255d
    public final void setFlags(int i8) {
        this.f4892J = i8;
    }

    public final String toString() {
        String strValueOf;
        String str;
        switch (this.f4889G) {
            case 1:
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(this.f4890H.getDescription());
                sb.append(", source=");
                int i8 = this.f4891I;
                if (i8 == 0) {
                    strValueOf = "SOURCE_APP";
                } else if (i8 == 1) {
                    strValueOf = "SOURCE_CLIPBOARD";
                } else if (i8 == 2) {
                    strValueOf = "SOURCE_INPUT_METHOD";
                } else if (i8 == 3) {
                    strValueOf = "SOURCE_DRAG_AND_DROP";
                } else if (i8 != 4) {
                    strValueOf = i8 != 5 ? String.valueOf(i8) : "SOURCE_PROCESS_TEXT";
                } else {
                    strValueOf = "SOURCE_AUTOFILL";
                }
                sb.append(strValueOf);
                sb.append(", flags=");
                int i9 = this.f4892J;
                sb.append((i9 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i9));
                Uri uri = this.f4893K;
                String str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                if (uri == null) {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                } else {
                    str = ", hasLinkUri(" + this.f4893K.toString().length() + ")";
                }
                sb.append(str);
                if (this.f4894L != null) {
                    str2 = ", hasExtras";
                }
                return p000a.r.j(sb, str2, "}");
            default:
                return super.toString();
        }
    }

    @Override // N.InterfaceC0258g
    public final ContentInfo x() {
        return null;
    }

    public C0256e(ClipData clipData, int i8) {
        this.f4890H = clipData;
        this.f4891I = i8;
    }
}
