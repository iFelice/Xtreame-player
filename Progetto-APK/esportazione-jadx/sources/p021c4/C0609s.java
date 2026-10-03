package p021c4;

import com.bumptech.glide.c;

/* JADX INFO: renamed from: c4.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0609s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f11358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f11359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f11360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f11361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f11362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Long f11363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Long f11364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Long f11365j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f11366k;

    public C0609s(String str, String str2, long j8, long j9, long j10, long j11, long j12, Long l4, Long l8, Long l9, Boolean bool) {
        c.e(str);
        c.e(str2);
        c.b(j8 >= 0);
        c.b(j9 >= 0);
        c.b(j10 >= 0);
        c.b(j12 >= 0);
        this.f11356a = str;
        this.f11357b = str2;
        this.f11358c = j8;
        this.f11359d = j9;
        this.f11360e = j10;
        this.f11361f = j11;
        this.f11362g = j12;
        this.f11363h = l4;
        this.f11364i = l8;
        this.f11365j = l9;
        this.f11366k = bool;
    }

    public final C0609s a(Long l4, Long l8, Boolean bool) {
        return new C0609s(this.f11356a, this.f11357b, this.f11358c, this.f11359d, this.f11360e, this.f11361f, this.f11362g, this.f11363h, l4, l8, bool);
    }
}
