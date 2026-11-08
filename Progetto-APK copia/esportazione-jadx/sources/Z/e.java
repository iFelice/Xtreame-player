package Z;

import Y.AbstractComponentCallbacksC0406s;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class e extends g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(int i8, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        super(abstractComponentCallbacksC0406s, "Attempting to get target fragment from fragment " + abstractComponentCallbacksC0406s);
        if (i8 != 1) {
            q0.h(abstractComponentCallbacksC0406s, "fragment");
            return;
        }
        q0.h(abstractComponentCallbacksC0406s, "fragment");
        super(abstractComponentCallbacksC0406s, "Attempting to set retain instance for fragment " + abstractComponentCallbacksC0406s);
    }
}
