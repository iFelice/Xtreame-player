package p172w1;

import android.text.Layout;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f30955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f30958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30959e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f30965k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f30966l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Layout.Alignment f30969o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Layout.Alignment f30970p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public b f30972r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f30974t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f30975u;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30960f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f30961g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30962h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f30963i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f30964j = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f30967m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f30968n = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f30971q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f30973s = Float.MAX_VALUE;

    public final void a(g gVar) {
        int i8;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f30957c && gVar.f30957c) {
                this.f30956b = gVar.f30956b;
                this.f30957c = true;
            }
            if (this.f30962h == -1) {
                this.f30962h = gVar.f30962h;
            }
            if (this.f30963i == -1) {
                this.f30963i = gVar.f30963i;
            }
            if (this.f30955a == null && (str = gVar.f30955a) != null) {
                this.f30955a = str;
            }
            if (this.f30960f == -1) {
                this.f30960f = gVar.f30960f;
            }
            if (this.f30961g == -1) {
                this.f30961g = gVar.f30961g;
            }
            if (this.f30968n == -1) {
                this.f30968n = gVar.f30968n;
            }
            if (this.f30969o == null && (alignment2 = gVar.f30969o) != null) {
                this.f30969o = alignment2;
            }
            if (this.f30970p == null && (alignment = gVar.f30970p) != null) {
                this.f30970p = alignment;
            }
            if (this.f30971q == -1) {
                this.f30971q = gVar.f30971q;
            }
            if (this.f30964j == -1) {
                this.f30964j = gVar.f30964j;
                this.f30965k = gVar.f30965k;
            }
            if (this.f30972r == null) {
                this.f30972r = gVar.f30972r;
            }
            if (this.f30973s == Float.MAX_VALUE) {
                this.f30973s = gVar.f30973s;
            }
            if (this.f30974t == null) {
                this.f30974t = gVar.f30974t;
            }
            if (this.f30975u == null) {
                this.f30975u = gVar.f30975u;
            }
            if (!this.f30959e && gVar.f30959e) {
                this.f30958d = gVar.f30958d;
                this.f30959e = true;
            }
            if (this.f30967m != -1 || (i8 = gVar.f30967m) == -1) {
                return;
            }
            this.f30967m = i8;
        }
    }
}
