package p123p6;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b[] f28231a;

    public a(int i8, ThreadFactory threadFactory) {
        this.f28231a = new b[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            this.f28231a[i9] = new b(threadFactory);
        }
    }
}
