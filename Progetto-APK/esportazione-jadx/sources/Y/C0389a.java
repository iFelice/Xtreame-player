package Y;

import android.util.Log;
import com.google.protobuf.U2;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import p032e0.EnumC2982j;

/* JADX INFO: renamed from: Y.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0389a implements I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F f7811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClassLoader f7812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f7813c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7814d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7816f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7817g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7818h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f7819i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f7820j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7821k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f7822l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f7823m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f7824n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList f7825o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ArrayList f7826p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f7827q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final K f7828r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f7829s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f7830t;

    public C0389a(K k8) {
        F fD = k8.D();
        C0408u c0408u = k8.f7742u;
        ClassLoader classLoader = c0408u != null ? c0408u.f7980N.getClassLoader() : null;
        this.f7813c = new ArrayList();
        this.f7827q = false;
        this.f7811a = fD;
        this.f7812b = classLoader;
        this.f7830t = -1;
        this.f7828r = k8;
    }

    @Override // Y.I
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f7819i) {
            return true;
        }
        K k8 = this.f7828r;
        if (k8.f7725d == null) {
            k8.f7725d = new ArrayList();
        }
        k8.f7725d.add(this);
        return true;
    }

    public final void b(Q q7) {
        this.f7813c.add(q7);
        q7.f7784d = this.f7814d;
        q7.f7785e = this.f7815e;
        q7.f7786f = this.f7816f;
        q7.f7787g = this.f7817g;
    }

    public final void c(int i8) {
        if (this.f7819i) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i8);
            }
            int size = this.f7813c.size();
            for (int i9 = 0; i9 < size; i9++) {
                Q q7 = (Q) this.f7813c.get(i9);
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = q7.f7782b;
                if (abstractComponentCallbacksC0406s != null) {
                    abstractComponentCallbacksC0406s.f7948X += i8;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Bump nesting of " + q7.f7782b + " to " + q7.f7782b.f7948X);
                    }
                }
            }
        }
    }

    public final int d(boolean z7) {
        if (this.f7829s) {
            throw new IllegalStateException("commit already called");
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new b0());
            f("  ", printWriter, true);
            printWriter.close();
        }
        this.f7829s = true;
        boolean z8 = this.f7819i;
        K k8 = this.f7828r;
        if (z8) {
            this.f7830t = k8.f7730i.getAndIncrement();
        } else {
            this.f7830t = -1;
        }
        k8.v(this, z7);
        return this.f7830t;
    }

    public final void e(int i8, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, String str, int i9) {
        String str2 = abstractComponentCallbacksC0406s.f7969s0;
        if (str2 != null) {
            Z.c.d(abstractComponentCallbacksC0406s, str2);
        }
        Class<?> cls = abstractComponentCallbacksC0406s.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = abstractComponentCallbacksC0406s.f7955e0;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(abstractComponentCallbacksC0406s);
                sb.append(": was ");
                throw new IllegalStateException(U2.n(sb, abstractComponentCallbacksC0406s.f7955e0, " now ", str));
            }
            abstractComponentCallbacksC0406s.f7955e0 = str;
        }
        if (i8 != 0) {
            if (i8 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + abstractComponentCallbacksC0406s + " with tag " + str + " to container view with no id");
            }
            int i10 = abstractComponentCallbacksC0406s.f7953c0;
            if (i10 != 0 && i10 != i8) {
                throw new IllegalStateException("Can't change container ID of fragment " + abstractComponentCallbacksC0406s + ": was " + abstractComponentCallbacksC0406s.f7953c0 + " now " + i8);
            }
            abstractComponentCallbacksC0406s.f7953c0 = i8;
            abstractComponentCallbacksC0406s.f7954d0 = i8;
        }
        b(new Q(i9, abstractComponentCallbacksC0406s));
        abstractComponentCallbacksC0406s.f7949Y = this.f7828r;
    }

    public final void f(String str, PrintWriter printWriter, boolean z7) {
        String str2;
        if (z7) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f7820j);
            printWriter.print(" mIndex=");
            printWriter.print(this.f7830t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f7829s);
            if (this.f7818h != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f7818h));
            }
            if (this.f7814d != 0 || this.f7815e != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f7814d));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f7815e));
            }
            if (this.f7816f != 0 || this.f7817g != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f7816f));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f7817g));
            }
            if (this.f7821k != 0 || this.f7822l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f7821k));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f7822l);
            }
            if (this.f7823m != 0 || this.f7824n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f7823m));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f7824n);
            }
        }
        if (this.f7813c.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f7813c.size();
        for (int i8 = 0; i8 < size; i8++) {
            Q q7 = (Q) this.f7813c.get(i8);
            switch (q7.f7781a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + q7.f7781a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i8);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(q7.f7782b);
            if (z7) {
                if (q7.f7784d != 0 || q7.f7785e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(q7.f7784d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(q7.f7785e));
                }
                if (q7.f7786f != 0 || q7.f7787g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(q7.f7786f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(q7.f7787g));
                }
            }
        }
    }

    public final void g(int i8, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (i8 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        e(i8, abstractComponentCallbacksC0406s, null, 2);
    }

    public final void h(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, EnumC2982j enumC2982j) {
        K k8 = abstractComponentCallbacksC0406s.f7949Y;
        K k9 = this.f7828r;
        if (k8 != k9) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + k9);
        }
        if (enumC2982j == EnumC2982j.f24742H && abstractComponentCallbacksC0406s.f7931G > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + enumC2982j + " after the Fragment has been created");
        }
        if (enumC2982j == EnumC2982j.f24741G) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + enumC2982j + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
        Q q7 = new Q();
        q7.f7781a = 10;
        q7.f7782b = abstractComponentCallbacksC0406s;
        q7.f7783c = false;
        q7.f7788h = abstractComponentCallbacksC0406s.f7970t0;
        q7.f7789i = enumC2982j;
        b(q7);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f7830t >= 0) {
            sb.append(" #");
            sb.append(this.f7830t);
        }
        if (this.f7820j != null) {
            sb.append(" ");
            sb.append(this.f7820j);
        }
        sb.append("}");
        return sb.toString();
    }
}
