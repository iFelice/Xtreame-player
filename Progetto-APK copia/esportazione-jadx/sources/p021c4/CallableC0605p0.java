package p021c4;

import java.util.concurrent.Callable;

/* JADX INFO: renamed from: c4.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC0605p0 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f11327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f11328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BinderC0608r0 f11329e;

    public /* synthetic */ CallableC0605p0(BinderC0608r0 binderC0608r0, String str, String str2, String str3, int i8) {
        this.f11325a = i8;
        this.f11326b = str;
        this.f11327c = str2;
        this.f11328d = str3;
        this.f11329e = binderC0608r0;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i8 = this.f11325a;
        String str = this.f11326b;
        String str2 = this.f11328d;
        String str3 = this.f11327c;
        BinderC0608r0 binderC0608r0 = this.f11329e;
        switch (i8) {
            case 0:
                binderC0608r0.f11346G.i();
                C0602o c0602o = binderC0608r0.f11346G.f10654I;
                A1.I(c0602o);
                return c0602o.w(str, str3, str2);
            case 1:
                binderC0608r0.f11346G.i();
                C0602o c0602o2 = binderC0608r0.f11346G.f10654I;
                A1.I(c0602o2);
                return c0602o2.w(str, str3, str2);
            case 2:
                binderC0608r0.f11346G.i();
                C0602o c0602o3 = binderC0608r0.f11346G.f10654I;
                A1.I(c0602o3);
                return c0602o3.r(str, str3, str2);
            default:
                binderC0608r0.f11346G.i();
                C0602o c0602o4 = binderC0608r0.f11346G.f10654I;
                A1.I(c0602o4);
                return c0602o4.r(str, str3, str2);
        }
    }
}
