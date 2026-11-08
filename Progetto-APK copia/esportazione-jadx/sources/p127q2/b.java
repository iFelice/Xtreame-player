package p127q2;

import P1.x;
import P1.z;
import Z3.C;
import android.database.Cursor;
import android.os.Build;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Iterator;
import p027d2.n;
import p096m2.f;
import p096m2.g;
import p096m2.i;
import p096m2.l;
import p096m2.q;
import p096m2.u;
import p162u6.o;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f29574a;

    static {
        String strF = n.f("DiagnosticsWrkr");
        q0.g(strF, "tagWithPrefix(\"DiagnosticsWrkr\")");
        f29574a = strF;
    }

    public static final String a(l lVar, u uVar, i iVar, ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append("\n Id \t Class Name\t " + (Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id") + "\t State\t Unique Name\t Tags\t");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            q qVar = (q) it.next();
            g gVarM = iVar.m(f.a(qVar));
            Integer numValueOf = gVarM != null ? Integer.valueOf(gVarM.f27219c) : null;
            lVar.getClass();
            z zVarN = z.N(1, "SELECT name FROM workname WHERE work_spec_id=?");
            String str = qVar.f27242a;
            if (str == null) {
                zVarN.J(1);
            } else {
                zVarN.g(1, str);
            }
            ((x) lVar.f27231H).b();
            Cursor cursorH = C.h((x) lVar.f27231H, zVarN);
            try {
                ArrayList arrayList2 = new ArrayList(cursorH.getCount());
                while (cursorH.moveToNext()) {
                    arrayList2.add(cursorH.isNull(0) ? null : cursorH.getString(0));
                }
                cursorH.close();
                zVarN.O();
                String strZ = o.z(arrayList2, ",", null, null, null, 62);
                String strZ2 = o.z(uVar.B(str), ",", null, null, null, 62);
                StringBuilder sbP = U2.p("\n", str, "\t ");
                sbP.append(qVar.f27244c);
                sbP.append("\t ");
                sbP.append(numValueOf);
                sbP.append("\t ");
                sbP.append(U2.B(qVar.f27243b));
                sbP.append("\t ");
                sbP.append(strZ);
                sbP.append("\t ");
                sbP.append(strZ2);
                sbP.append('\t');
                sb.append(sbP.toString());
            } catch (Throwable th) {
                cursorH.close();
                zVarN.O();
                throw th;
            }
        }
        String string = sb.toString();
        q0.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
