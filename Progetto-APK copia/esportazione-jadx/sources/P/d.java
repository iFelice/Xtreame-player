package P;

import B0.C0073x;
import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public final class d extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0073x f5692a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(InputConnection inputConnection, C0073x c0073x) {
        super(inputConnection, false);
        this.f5692a = c0073x;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i8, Bundle bundle) {
        S s7 = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            s7 = new S(new f(inputContentInfo), 14);
        }
        if (this.f5692a.f(s7, i8, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i8, bundle);
    }
}
