package p078j6;

import Y.r;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends RuntimeException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f25720G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f25721H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public r f25722I;

    public b(List list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Throwable th = (Throwable) it.next();
                if (th instanceof b) {
                    linkedHashSet.addAll(((b) th).f25720G);
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (linkedHashSet.isEmpty()) {
            throw new IllegalArgumentException("errors is empty");
        }
        arrayList.addAll(linkedHashSet);
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        this.f25720G = listUnmodifiableList;
        this.f25721H = listUnmodifiableList.size() + " exceptions occurred. ";
    }

    public static void a(StringBuilder sb, Throwable th, String str) {
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), HttpUrl.FRAGMENT_ENCODE_SET);
        }
    }

    public final void b(a aVar) {
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i8 = 1;
        for (Throwable th : this.f25720G) {
            sb.append("  ComposedException ");
            sb.append(i8);
            sb.append(" :\n");
            a(sb, th, "\t");
            i8++;
        }
        aVar.d(sb.toString());
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        try {
            if (this.f25722I == null) {
                r rVar = new r(14, (Object) null);
                HashSet hashSet = new HashSet();
                r rVar2 = rVar;
                for (Throwable runtimeException : this.f25720G) {
                    if (!hashSet.contains(runtimeException)) {
                        hashSet.add(runtimeException);
                        ArrayList<Throwable> arrayList = new ArrayList();
                        Throwable cause = runtimeException.getCause();
                        if (cause != null && cause != runtimeException) {
                            while (true) {
                                arrayList.add(cause);
                                Throwable cause2 = cause.getCause();
                                if (cause2 == null || cause2 == cause) {
                                    break;
                                    break;
                                }
                                cause = cause2;
                            }
                        }
                        for (Throwable th : arrayList) {
                            if (hashSet.contains(th)) {
                                runtimeException = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th);
                            }
                        }
                        try {
                            rVar2.initCause(runtimeException);
                        } catch (Throwable unused) {
                        }
                        Throwable cause3 = rVar2.getCause();
                        if (cause3 != null && this.f25722I != cause3) {
                            while (true) {
                                Throwable cause4 = cause3.getCause();
                                if (cause4 == null || cause4 == cause3) {
                                    break;
                                    break;
                                }
                                cause3 = cause4;
                            }
                            rVar2 = cause3;
                        }
                    }
                }
                this.f25722I = rVar;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f25722I;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f25721H;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        b(new a(printStream, 0));
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        b(new a(printWriter, 1));
    }
}
