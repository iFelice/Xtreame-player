package okhttp3.internal.cache;

import C6.l;
import D6.h;
import java.io.IOException;
import okhttp3.internal.Util;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class DiskLruCache$newJournalWriter$faultHidingSink$1 extends h implements l {
    final /* synthetic */ DiskLruCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$newJournalWriter$faultHidingSink$1(DiskLruCache diskLruCache) {
        super(1);
        this.this$0 = diskLruCache;
    }

    @Override // C6.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((IOException) obj);
        return p155t6.h.f30319a;
    }

    public final void invoke(IOException iOException) {
        q0.h(iOException, "it");
        DiskLruCache diskLruCache = this.this$0;
        if (!Util.assertionsEnabled || Thread.holdsLock(diskLruCache)) {
            this.this$0.hasJournalErrors = true;
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + diskLruCache);
    }
}
