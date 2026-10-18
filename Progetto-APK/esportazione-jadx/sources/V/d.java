package V;

import android.text.Editable;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public final class d extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f6999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final U4.b f7000b;

    public d(EditText editText, InputConnection inputConnection) {
        U4.b bVar = new U4.b();
        super(inputConnection, false);
        this.f6999a = editText;
        this.f7000b = bVar;
        Object obj = U.a.f6622a;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i8, int i9) {
        Editable editableText = this.f6999a.getEditableText();
        this.f7000b.getClass();
        return U4.b.a0(this, editableText, i8, i9, false) || super.deleteSurroundingText(i8, i9);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i8, int i9) {
        Editable editableText = this.f6999a.getEditableText();
        this.f7000b.getClass();
        return U4.b.a0(this, editableText, i8, i9, true) || super.deleteSurroundingTextInCodePoints(i8, i9);
    }
}
