package p125q0;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f29447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29448b;

    public e() {
        this.f29447a = 2;
    }

    public static String a(int i8) {
        return HttpUrl.FRAGMENT_ENCODE_SET + ((char) ((i8 >> 24) & 255)) + ((char) ((i8 >> 16) & 255)) + ((char) ((i8 >> 8) & 255)) + ((char) (i8 & 255));
    }

    public static int c(int i8) {
        return (i8 >> 24) & 255;
    }

    public static String d(int i8) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) ((i8 >> 24) & 255));
        sb.append((char) ((i8 >> 16) & 255));
        sb.append((char) ((i8 >> 8) & 255));
        sb.append((char) (i8 & 255));
        return sb.toString();
    }

    public final boolean b(int i8) {
        return (this.f29448b & i8) == i8;
    }

    public String toString() {
        switch (this.f29447a) {
            case 0:
                return a(this.f29448b);
            case 1:
                return d(this.f29448b);
            default:
                return super.toString();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(int i8) {
        this(i8, 0);
        this.f29447a = 0;
    }

    public /* synthetic */ e(int i8, int i9) {
        this.f29447a = i9;
        this.f29448b = i8;
    }
}
