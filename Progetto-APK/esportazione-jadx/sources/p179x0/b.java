package p179x0;

import p117p0.r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f31178a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(int i8, String[] strArr) {
        super(strArr);
        this.f31178a = i8;
    }

    @Override // p117p0.r
    public final void loadLibrary(String str) {
        switch (this.f31178a) {
            case 0:
                System.loadLibrary(str);
                break;
            case 1:
                System.loadLibrary(str);
                break;
            case 2:
                System.loadLibrary(str);
                break;
            case 3:
                System.loadLibrary(str);
                break;
            default:
                System.loadLibrary(str);
                break;
        }
    }
}
