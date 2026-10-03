package V;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

/* JADX INFO: loaded from: classes.dex */
public final class a extends U4.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final EditText f6990G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f6991H;

    public a(EditText editText) {
        this.f6990G = editText;
        i iVar = new i(editText);
        this.f6991H = iVar;
        editText.addTextChangedListener(iVar);
        if (c.f6997b == null) {
            synchronized (c.f6996a) {
                try {
                    if (c.f6997b == null) {
                        c cVar = new c();
                        try {
                            c.f6998c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, c.class.getClassLoader());
                        } catch (Throwable unused) {
                        }
                        c.f6997b = cVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        editText.setEditableFactory(c.f6997b);
    }

    @Override // U4.b
    public final KeyListener X(KeyListener keyListener) {
        if (keyListener instanceof f) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new f(keyListener);
    }

    @Override // U4.b
    public final InputConnection e0(InputConnection inputConnection, EditorInfo editorInfo) {
        return inputConnection instanceof d ? inputConnection : new d(this.f6990G, inputConnection);
    }

    @Override // U4.b
    public final void g0(boolean z7) {
        i iVar = this.f6991H;
        if (iVar.f7010I != z7) {
            iVar.getClass();
            iVar.f7010I = z7;
            if (z7) {
                U.a.a();
                throw null;
            }
        }
    }
}
