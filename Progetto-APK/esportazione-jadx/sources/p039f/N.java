package p039f;

import android.app.AlertDialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.view.KeyEvent;
import android.view.View;
import c7.d;
import com.google.protobuf.U2;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import okhttp3.HttpUrl;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class N implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24981G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f24982H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final KeyEvent.Callback f24983I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f24984J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f24985K;

    public /* synthetic */ N(Object obj, AlertDialog alertDialog, d dVar, String str, int i8) {
        this.f24981G = i8;
        this.f24985K = obj;
        this.f24983I = alertDialog;
        this.f24984J = dVar;
        this.f24982H = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Method method;
        int i8 = this.f24981G;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        String str2 = this.f24982H;
        KeyEvent.Callback callback = this.f24983I;
        switch (i8) {
            case 0:
                if (((Method) this.f24984J) == null) {
                    View view2 = (View) callback;
                    Context context = view2.getContext();
                    while (true) {
                        if (context == null) {
                            int id = view2.getId();
                            if (id != -1) {
                                str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                            }
                            StringBuilder sbP = U2.p("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                            sbP.append(view2.getClass());
                            sbP.append(str);
                            throw new IllegalStateException(sbP.toString());
                        }
                        try {
                            if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                                this.f24984J = method;
                                this.f24985K = context;
                            }
                            break;
                        } catch (NoSuchMethodException unused) {
                        }
                        context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
                    }
                }
                try {
                    ((Method) this.f24984J).invoke((Context) this.f24985K, view);
                    return;
                } catch (IllegalAccessException e8) {
                    throw new IllegalStateException("Could not execute non-public method for android:onClick", e8);
                } catch (InvocationTargetException e9) {
                    throw new IllegalStateException("Could not execute method for android:onClick", e9);
                }
            case 1:
                ((AlertDialog) callback).dismiss();
                ((d) this.f24984J).C0(q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "-" + str2);
                return;
            case 2:
                ((AlertDialog) callback).dismiss();
                ((d) this.f24984J).C0(q0.q().c("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET) + "-" + str2);
                return;
            case 3:
                ((AlertDialog) callback).dismiss();
                ((d) this.f24984J).D0(str2);
                return;
            default:
                ((AlertDialog) callback).dismiss();
                if (str2 != "VOD") {
                    ((d) this.f24984J).D0((String) this.f24985K);
                    return;
                }
                d dVar = (d) this.f24984J;
                StringBuilder sb = new StringBuilder();
                U2.x("ORT_PROFILE_ID", HttpUrl.FRAGMENT_ENCODE_SET, sb, "-");
                sb.append((String) this.f24985K);
                dVar.C0(sb.toString());
                return;
        }
    }

    public N(View view, String str) {
        this.f24981G = 0;
        this.f24983I = view;
        this.f24982H = str;
    }

    public N(AlertDialog alertDialog, String str, d dVar, String str2) {
        this.f24981G = 4;
        this.f24983I = alertDialog;
        this.f24982H = str;
        this.f24984J = dVar;
        this.f24985K = str2;
    }
}
