package okhttp3.internal.http2;

import Q6.l;
import java.util.List;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public interface PushObserver {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i8, l lVar, int i9, boolean z7) {
                q0.h(lVar, "source");
                lVar.b(i9);
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i8, List<Header> list, boolean z7) {
                q0.h(list, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i8, List<Header> list) {
                q0.h(list, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i8, ErrorCode errorCode) {
                q0.h(errorCode, "errorCode");
            }
        }

        private Companion() {
        }
    }

    boolean onData(int i8, l lVar, int i9, boolean z7);

    boolean onHeaders(int i8, List<Header> list, boolean z7);

    boolean onRequest(int i8, List<Header> list);

    void onReset(int i8, ErrorCode errorCode);
}
