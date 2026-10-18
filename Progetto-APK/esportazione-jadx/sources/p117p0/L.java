package p117p0;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class L implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f28048G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f28049H;

    public /* synthetic */ L(String str, int i8) {
        this.f28048G = i8;
        this.f28049H = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i8 = this.f28048G;
        String str = this.f28049H;
        switch (i8) {
            case 0:
                break;
        }
        return new Thread(runnable, str);
    }
}
