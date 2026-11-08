package N;

import android.text.TextUtils;
import android.view.View;

/* JADX INFO: renamed from: N.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0276z extends B {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ int f4932K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0276z(int i8, int i9) {
        super(i8, Boolean.class, 0, 28);
        this.f4932K = i9;
    }

    @Override // N.B
    public final Object b(View view) {
        int i8 = this.f4932K;
        switch (i8) {
            case 0:
                switch (i8) {
                    case 0:
                        return Boolean.valueOf(I.c(view));
                    default:
                        return Boolean.valueOf(I.b(view));
                }
            case 1:
                switch (i8) {
                    case 1:
                        return I.a(view);
                    default:
                        return K.a(view);
                }
            case 2:
                switch (i8) {
                    case 1:
                        return I.a(view);
                    default:
                        return K.a(view);
                }
            default:
                switch (i8) {
                    case 0:
                        return Boolean.valueOf(I.c(view));
                    default:
                        return Boolean.valueOf(I.b(view));
                }
        }
    }

    @Override // N.B
    public final void c(View view, Object obj) {
        int i8 = this.f4932K;
        switch (i8) {
            case 0:
                Boolean bool = (Boolean) obj;
                switch (i8) {
                    case 0:
                        I.f(view, bool.booleanValue());
                        break;
                    default:
                        I.d(view, bool.booleanValue());
                        break;
                }
                break;
            case 1:
                CharSequence charSequence = (CharSequence) obj;
                switch (i8) {
                    case 1:
                        I.e(view, charSequence);
                        break;
                    default:
                        K.b(view, charSequence);
                        break;
                }
                break;
            case 2:
                CharSequence charSequence2 = (CharSequence) obj;
                switch (i8) {
                    case 1:
                        I.e(view, charSequence2);
                        break;
                    default:
                        K.b(view, charSequence2);
                        break;
                }
                break;
            default:
                Boolean bool2 = (Boolean) obj;
                switch (i8) {
                    case 0:
                        I.f(view, bool2.booleanValue());
                        break;
                    default:
                        I.d(view, bool2.booleanValue());
                        break;
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0026  */
    /* JADX WARN: Code duplicated, block: B:57:0x0089  */
    @Override // N.B
    public final boolean g(Object obj, Object obj2) {
        boolean zEquals;
        boolean zEquals2;
        boolean z7 = false;
        int i8 = this.f4932K;
        switch (i8) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                switch (i8) {
                    case 0:
                        if ((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue())) {
                            z7 = true;
                        }
                        break;
                    default:
                        if ((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue())) {
                            z7 = true;
                        }
                        break;
                }
                return !z7;
            case 1:
                CharSequence charSequence = (CharSequence) obj;
                CharSequence charSequence2 = (CharSequence) obj2;
                switch (i8) {
                    case 1:
                        zEquals = TextUtils.equals(charSequence, charSequence2);
                        break;
                    default:
                        zEquals = TextUtils.equals(charSequence, charSequence2);
                        break;
                }
                return !zEquals;
            case 2:
                CharSequence charSequence3 = (CharSequence) obj;
                CharSequence charSequence4 = (CharSequence) obj2;
                switch (i8) {
                    case 1:
                        zEquals2 = TextUtils.equals(charSequence3, charSequence4);
                        break;
                    default:
                        zEquals2 = TextUtils.equals(charSequence3, charSequence4);
                        break;
                }
                return !zEquals2;
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                switch (i8) {
                    case 0:
                        if ((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue())) {
                            z7 = true;
                        }
                        break;
                    default:
                        if ((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue())) {
                            z7 = true;
                        }
                        break;
                }
                return !z7;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0276z(int i8, int i9, int i10, int i11) {
        super(i8, CharSequence.class, i9, i10);
        this.f4932K = i11;
    }
}
