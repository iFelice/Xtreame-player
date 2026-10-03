package androidx.preference;

import F1.b;
import F1.c;
import F2.G;
import Z3.H;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.common.api.d;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class Preference implements Comparable<Preference> {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f9550G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f9551H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final CharSequence f9552I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final CharSequence f9553J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f9554K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f9555L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f9556M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f9557N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Object f9558O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f9559P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f9560Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public b f9561R;

    public Preference(Context context, AttributeSet attributeSet, int i8) {
        this.f9551H = d.API_PRIORITY_OTHER;
        this.f9556M = true;
        this.f9557N = true;
        this.f9559P = true;
        this.f9560Q = true;
        this.f9550G = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.f3104f, i8, 0);
        typedArrayObtainStyledAttributes.getResourceId(23, typedArrayObtainStyledAttributes.getResourceId(0, 0));
        String string = typedArrayObtainStyledAttributes.getString(26);
        this.f9554K = string == null ? typedArrayObtainStyledAttributes.getString(6) : string;
        CharSequence text = typedArrayObtainStyledAttributes.getText(34);
        this.f9552I = text == null ? typedArrayObtainStyledAttributes.getText(4) : text;
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(33);
        this.f9553J = text2 == null ? typedArrayObtainStyledAttributes.getText(7) : text2;
        this.f9551H = typedArrayObtainStyledAttributes.getInt(28, typedArrayObtainStyledAttributes.getInt(8, d.API_PRIORITY_OTHER));
        String string2 = typedArrayObtainStyledAttributes.getString(22);
        this.f9555L = string2 == null ? typedArrayObtainStyledAttributes.getString(13) : string2;
        typedArrayObtainStyledAttributes.getResourceId(27, typedArrayObtainStyledAttributes.getResourceId(3, R.layout.preference));
        typedArrayObtainStyledAttributes.getResourceId(35, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        this.f9556M = typedArrayObtainStyledAttributes.getBoolean(21, typedArrayObtainStyledAttributes.getBoolean(2, true));
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(30, typedArrayObtainStyledAttributes.getBoolean(5, true));
        this.f9557N = z7;
        typedArrayObtainStyledAttributes.getBoolean(29, typedArrayObtainStyledAttributes.getBoolean(1, true));
        H.i(typedArrayObtainStyledAttributes, 19, 10);
        typedArrayObtainStyledAttributes.getBoolean(16, typedArrayObtainStyledAttributes.getBoolean(16, z7));
        typedArrayObtainStyledAttributes.getBoolean(17, typedArrayObtainStyledAttributes.getBoolean(17, z7));
        if (typedArrayObtainStyledAttributes.hasValue(18)) {
            this.f9558O = e(typedArrayObtainStyledAttributes, 18);
        } else if (typedArrayObtainStyledAttributes.hasValue(11)) {
            this.f9558O = e(typedArrayObtainStyledAttributes, 11);
        }
        typedArrayObtainStyledAttributes.getBoolean(31, typedArrayObtainStyledAttributes.getBoolean(12, true));
        if (typedArrayObtainStyledAttributes.hasValue(32)) {
            typedArrayObtainStyledAttributes.getBoolean(32, typedArrayObtainStyledAttributes.getBoolean(14, true));
        }
        typedArrayObtainStyledAttributes.getBoolean(24, typedArrayObtainStyledAttributes.getBoolean(15, false));
        typedArrayObtainStyledAttributes.getBoolean(25, typedArrayObtainStyledAttributes.getBoolean(25, true));
        typedArrayObtainStyledAttributes.getBoolean(20, typedArrayObtainStyledAttributes.getBoolean(20, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public CharSequence a() {
        b bVar = this.f9561R;
        return bVar != null ? ((G) bVar).J(this) : this.f9553J;
    }

    public boolean b() {
        return this.f9556M && this.f9559P && this.f9560Q;
    }

    public void c() {
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i8 = preference2.f9551H;
        int i9 = this.f9551H;
        if (i9 != i8) {
            return i9 - i8;
        }
        CharSequence charSequence = preference2.f9552I;
        CharSequence charSequence2 = this.f9552I;
        if (charSequence2 == charSequence) {
            return 0;
        }
        if (charSequence2 == null) {
            return 1;
        }
        if (charSequence == null) {
            return -1;
        }
        return charSequence2.toString().compareToIgnoreCase(charSequence.toString());
    }

    public void d() {
    }

    public Object e(TypedArray typedArray, int i8) {
        return null;
    }

    public void f(View view) {
        if (b() && this.f9557N) {
            d();
        }
    }

    public boolean g() {
        return !b();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.f9552I;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence charSequenceA = a();
        if (!TextUtils.isEmpty(charSequenceA)) {
            sb.append(charSequenceA);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, H.e(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }
}
