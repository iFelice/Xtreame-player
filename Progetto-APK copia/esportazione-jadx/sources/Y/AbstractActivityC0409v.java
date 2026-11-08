package Y;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p032e0.EnumC2981i;
import p032e0.EnumC2982j;
import p039f.AbstractActivityC3000o;

/* JADX INFO: renamed from: Y.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractActivityC0409v extends p000a.m implements D.a, D.b {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final /* synthetic */ int f7984c0 = 0;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final p039f.S f7985X;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f7987Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f7988a0;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final p032e0.o f7986Y = new p032e0.o(this);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f7989b0 = true;

    public AbstractActivityC0409v() {
        final AbstractActivityC3000o abstractActivityC3000o = (AbstractActivityC3000o) this;
        this.f7985X = new p039f.S(new C0408u(abstractActivityC3000o), 18);
        final int i8 = 1;
        this.f8580K.f6394b.c("android:support:lifecycle", new p000a.d(this, i8));
        final int i9 = 0;
        this.f8586Q.add(new M.a() { // from class: Y.t
            @Override // M.a
            public final void accept(Object obj) {
                int i10 = i9;
                AbstractActivityC0409v abstractActivityC0409v = abstractActivityC3000o;
                switch (i10) {
                    case 0:
                        abstractActivityC0409v.f7985X.S();
                        break;
                    default:
                        abstractActivityC0409v.f7985X.S();
                        break;
                }
            }
        });
        this.f8588S.add(new M.a() { // from class: Y.t
            @Override // M.a
            public final void accept(Object obj) {
                int i10 = i8;
                AbstractActivityC0409v abstractActivityC0409v = abstractActivityC3000o;
                switch (i10) {
                    case 0:
                        abstractActivityC0409v.f7985X.S();
                        break;
                    default:
                        abstractActivityC0409v.f7985X.S();
                        break;
                }
            }
        });
        i(new p000a.e(this, i8));
    }

    public static boolean o(K k8) {
        boolean zO = false;
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : k8.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null) {
                C0408u c0408u = abstractComponentCallbacksC0406s.f7950Z;
                if ((c0408u == null ? null : c0408u.f7983Q) != null) {
                    zO |= o(abstractComponentCallbacksC0406s.k());
                }
                a0 a0Var = abstractComponentCallbacksC0406s.f7972v0;
                EnumC2982j enumC2982j = EnumC2982j.f24744J;
                if (a0Var != null) {
                    a0Var.e();
                    if (a0Var.f7833I.f24751L.compareTo(enumC2982j) >= 0) {
                        abstractComponentCallbacksC0406s.f7972v0.f7833I.h();
                        zO = true;
                    }
                }
                if (abstractComponentCallbacksC0406s.f7971u0.f24751L.compareTo(enumC2982j) >= 0) {
                    abstractComponentCallbacksC0406s.f7971u0.h();
                    zO = true;
                }
            }
        }
        return zO;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x0024  */
    /* JADX WARN: Code duplicated, block: B:28:0x0048  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x005f, please report this as an issue */
    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        boolean z7;
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (strArr != null && strArr.length != 0) {
            String str2 = strArr[0];
            switch (str2.hashCode()) {
                case -645125871:
                    if (!str2.equals("--translation") || Build.VERSION.SDK_INT < 31) {
                    }
                    break;
                case 100470631:
                    if (str2.equals("--dump-dumpable")) {
                        z7 = Build.VERSION.SDK_INT >= 33;
                    }
                    break;
                case 472614934:
                    if (str2.equals("--list-dumpables")) {
                        if (Build.VERSION.SDK_INT >= 33) {
                        }
                    }
                    break;
                case 1159329357:
                    if (!str2.equals("--contentcapture") || Build.VERSION.SDK_INT < 29) {
                    }
                    break;
                case 1455016274:
                    if (!str2.equals("--autofill") || Build.VERSION.SDK_INT < 26) {
                    }
                    break;
                default:
                    break;
            }
        }
        if (true ^ z7) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str3 = str + "  ";
            printWriter.print(str3);
            printWriter.print("mCreated=");
            printWriter.print(this.f7987Z);
            printWriter.print(" mResumed=");
            printWriter.print(this.f7988a0);
            printWriter.print(" mStopped=");
            printWriter.print(this.f7989b0);
            if (getApplication() != null) {
                p132r.n nVar = ((p056h0.a) new p032e0.J(c(), p056h0.a.f25381c).a(p056h0.a.class)).f25382b;
                if (nVar.f29687I > 0) {
                    printWriter.print(str3);
                    printWriter.println("Loaders:");
                    if (nVar.f29687I > 0) {
                        A0.O.I(nVar.f29686H[0]);
                        printWriter.print(str3);
                        printWriter.print("  #");
                        printWriter.print(nVar.f29685G[0]);
                        printWriter.print(": ");
                        throw null;
                    }
                }
            }
            this.f7985X.R().u(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // p000a.m, android.app.Activity
    public final void onActivityResult(int i8, int i9, Intent intent) {
        this.f7985X.S();
        super.onActivityResult(i8, i9, intent);
    }

    @Override // p000a.m, D.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7986Y.f(EnumC2981i.ON_CREATE);
        K k8 = ((C0408u) this.f7985X.f24988H).f7982P;
        k8.f7713F = false;
        k8.f7714G = false;
        k8.f7720M.f7762g = false;
        k8.t(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((C0408u) this.f7985X.f24988H).f7982P.f7727f.onCreateView(view, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((C0408u) this.f7985X.f24988H).f7982P.k();
        this.f7986Y.f(EnumC2981i.ON_DESTROY);
    }

    @Override // p000a.m, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i8, MenuItem menuItem) {
        if (super.onMenuItemSelected(i8, menuItem)) {
            return true;
        }
        if (i8 == 6) {
            return ((C0408u) this.f7985X.f24988H).f7982P.i();
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f7988a0 = false;
        ((C0408u) this.f7985X.f24988H).f7982P.t(5);
        this.f7986Y.f(EnumC2981i.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f7986Y.f(EnumC2981i.ON_RESUME);
        K k8 = ((C0408u) this.f7985X.f24988H).f7982P;
        k8.f7713F = false;
        k8.f7714G = false;
        k8.f7720M.f7762g = false;
        k8.t(7);
    }

    @Override // p000a.m, android.app.Activity, D.a
    public void onRequestPermissionsResult(int i8, String[] strArr, int[] iArr) {
        this.f7985X.S();
        super.onRequestPermissionsResult(i8, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        p039f.S s7 = this.f7985X;
        s7.S();
        super.onResume();
        this.f7988a0 = true;
        ((C0408u) s7.f24988H).f7982P.x(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        p039f.S s7 = this.f7985X;
        s7.S();
        super.onStart();
        this.f7989b0 = false;
        if (!this.f7987Z) {
            this.f7987Z = true;
            K k8 = ((C0408u) s7.f24988H).f7982P;
            k8.f7713F = false;
            k8.f7714G = false;
            k8.f7720M.f7762g = false;
            k8.t(4);
        }
        ((C0408u) s7.f24988H).f7982P.x(true);
        this.f7986Y.f(EnumC2981i.ON_START);
        K k9 = ((C0408u) s7.f24988H).f7982P;
        k9.f7713F = false;
        k9.f7714G = false;
        k9.f7720M.f7762g = false;
        k9.t(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f7985X.S();
    }

    @Override // android.app.Activity
    public void onStop() {
        p039f.S s7;
        super.onStop();
        this.f7989b0 = true;
        do {
            s7 = this.f7985X;
        } while (o(s7.R()));
        K k8 = ((C0408u) s7.f24988H).f7982P;
        k8.f7714G = true;
        k8.f7720M.f7762g = true;
        k8.t(4);
        this.f7986Y.f(EnumC2981i.ON_STOP);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = ((C0408u) this.f7985X.f24988H).f7982P.f7727f.onCreateView(null, str, context, attributeSet);
        return viewOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewOnCreateView;
    }
}
