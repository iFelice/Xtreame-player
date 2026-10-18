package y2;

import android.util.Log;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class z extends Exception {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final StackTraceElement[] f31412L = new StackTraceElement[0];

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f31413G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public p173w2.i f31414H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public p173w2.a f31415I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Class f31416J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f31417K;

    public z(String str) {
        this(str, Collections.emptyList());
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (!(th instanceof z)) {
            arrayList.add(th);
            return;
        }
        Iterator it = ((z) th).f31413G.iterator();
        while (it.hasNext()) {
            a((Throwable) it.next(), arrayList);
        }
    }

    public static void b(List list, y yVar) {
        try {
            c(list, yVar);
        } catch (IOException e8) {
            throw new RuntimeException(e8);
        }
    }

    public static void c(List list, y yVar) throws IOException {
        int size = list.size();
        int i8 = 0;
        while (i8 < size) {
            yVar.append("Cause (");
            int i9 = i8 + 1;
            yVar.append(String.valueOf(i9));
            yVar.append(" of ");
            yVar.append(String.valueOf(size));
            yVar.append("): ");
            Throwable th = (Throwable) list.get(i8);
            if (th instanceof z) {
                ((z) th).f(yVar);
            } else {
                d(th, yVar);
            }
            i8 = i9;
        }
    }

    public static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i8 = 0;
        while (i8 < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i9 = i8 + 1;
            sb.append(i9);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i8));
            i8 = i9;
        }
    }

    public final void f(Appendable appendable) {
        d(this, appendable);
        b(this.f31413G, new y(appendable));
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f31417K);
        Class cls = this.f31416J;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        sb.append(cls != null ? ", " + this.f31416J : HttpUrl.FRAGMENT_ENCODE_SET);
        sb.append(this.f31415I != null ? ", " + this.f31415I : HttpUrl.FRAGMENT_ENCODE_SET);
        if (this.f31414H != null) {
            str = ", " + this.f31414H;
        }
        sb.append(str);
        ArrayList<Throwable> arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        for (Throwable th : arrayList) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        f(System.err);
    }

    public z(String str, List list) {
        this.f31417K = str;
        setStackTrace(f31412L);
        this.f31413G = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        f(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        f(printWriter);
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }
}
