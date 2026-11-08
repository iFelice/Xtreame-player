package p086l;

import B0.C0073x;
import E3.f;
import N.C0254c;
import N.C0256e;
import N.C0259h;
import N.InterfaceC0255d;
import N.InterfaceC0270t;
import N.N;
import P.d;
import Q.j;
import Q.k;
import Q3.b;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import p096m2.c;
import p096m2.e;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class A extends EditText implements InterfaceC0270t, k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26058G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3023d0 f26059H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final e f26060I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final j f26061J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final c f26062K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public C3065z f26063L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.editTextStyle);
        d1.a(context);
        c1.a(getContext(), this);
        C3051s c3051s = new C3051s(this);
        this.f26058G = c3051s;
        c3051s.f(attributeSet, R.attr.editTextStyle);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26059H = c3023d0;
        c3023d0.f(attributeSet, R.attr.editTextStyle);
        c3023d0.b();
        this.f26060I = new e((TextView) this);
        this.f26061J = new j();
        c cVar = new c(this);
        this.f26062K = cVar;
        cVar.m(attributeSet, R.attr.editTextStyle);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean zIsFocusable = isFocusable();
            boolean zIsClickable = isClickable();
            boolean zIsLongClickable = isLongClickable();
            int inputType = getInputType();
            KeyListener keyListenerI = cVar.i(keyListener);
            if (keyListenerI == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerI);
            setRawInputType(inputType);
            setFocusable(zIsFocusable);
            setClickable(zIsClickable);
            setLongClickable(zIsLongClickable);
        }
    }

    private C3065z getSuperCaller() {
        if (this.f26063L == null) {
            this.f26063L = new C3065z(this);
        }
        return this.f26063L;
    }

    @Override // N.InterfaceC0270t
    public final C0259h a(C0259h c0259h) {
        this.f26061J.getClass();
        return j.a(this, c0259h);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            c3051s.b();
        }
        C3023d0 c3023d0 = this.f26059H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return f.D(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26059H.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26059H.e();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        e eVar;
        if (Build.VERSION.SDK_INT >= 28 || (eVar = this.f26060I) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) eVar.f27216I;
        return textClassifier == null ? X.a((TextView) eVar.f27215H) : textClassifier;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0057 A[PHI: r1
      0x0057: PHI (r1v10 java.lang.String[]) = (r1v5 java.lang.String[]), (r1v11 java.lang.String[]) binds: [B:30:0x006a, B:22:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i8;
        String[] strArrF;
        String[] stringArray;
        InputConnection eVar;
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f26059H.getClass();
        C3023d0.h(this, inputConnectionOnCreateInputConnection, editorInfo);
        b.q(this, editorInfo, inputConnectionOnCreateInputConnection);
        if (inputConnectionOnCreateInputConnection != null && (i8 = Build.VERSION.SDK_INT) <= 30 && (strArrF = N.f(this)) != null) {
            if (i8 >= 25) {
                editorInfo.contentMimeTypes = strArrF;
            } else {
                if (editorInfo.extras == null) {
                    editorInfo.extras = new Bundle();
                }
                editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArrF);
                editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", strArrF);
            }
            C0073x c0073x = new C0073x(this, 0);
            if (i8 >= 25) {
                eVar = new d(inputConnectionOnCreateInputConnection, c0073x);
            } else {
                String[] strArr = P.c.f5691a;
                if (i8 >= 25) {
                    stringArray = editorInfo.contentMimeTypes;
                    if (stringArray != null) {
                        strArr = stringArray;
                    }
                } else {
                    Bundle bundle = editorInfo.extras;
                    if (bundle != null) {
                        stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                        if (stringArray == null) {
                            stringArray = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                        }
                        if (stringArray != null) {
                            strArr = stringArray;
                        }
                    }
                }
                if (strArr.length != 0) {
                    eVar = new P.e(inputConnectionOnCreateInputConnection, c0073x);
                }
            }
            inputConnectionOnCreateInputConnection = eVar;
        }
        return this.f26062K.u(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 30 || i8 >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 31 && i8 >= 24 && dragEvent.getLocalState() == null && N.f(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3 && L.a(dragEvent, this, activity)) {
                return true;
            }
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i8) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 31 || N.f(this) == null || !(i8 == 16908322 || i8 == 16908337)) {
            return super.onTextContextMenuItem(i8);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            InterfaceC0255d c0254c = i9 >= 31 ? new C0254c(primaryClip, 1) : new C0256e(primaryClip, 1);
            c0254c.setFlags(i8 == 16908322 ? 0 : 1);
            N.k(this, c0254c.build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26059H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26059H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(f.E(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        ((U4.b) ((V.b) this.f26062K.f27211I).f6995d).g0(z7);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f26062K.i(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26058G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26059H;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26059H;
        c3023d0.m(mode);
        c3023d0.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i8) {
        super.setTextAppearance(context, i8);
        C3023d0 c3023d0 = this.f26059H;
        if (c3023d0 != null) {
            c3023d0.g(context, i8);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        e eVar;
        if (Build.VERSION.SDK_INT >= 28 || (eVar = this.f26060I) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            eVar.f27216I = textClassifier;
        }
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : getEditableText();
    }
}
