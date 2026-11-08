package T5;

import F.i;
import O1.c0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.DialogInterfaceOnClickListenerC0944Ub;
import com.preference.ui.debug.DebugActivity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import p039f.C2992g;
import p039f.C2996k;
import p156u.h;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends V5.b implements View.OnClickListener {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final c f6608K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f6609L;

    public f(ArrayList arrayList, DebugActivity debugActivity, boolean z7) {
        i iVar = new i(arrayList);
        this.f7175I = iVar;
        V5.a aVar = new V5.a();
        aVar.f7174b = iVar;
        aVar.f7173a = this;
        this.f7176J = aVar;
        this.f6608K = debugActivity;
        this.f6609L = z7;
    }

    @Override // O1.C
    public final int b(int i8) {
        i iVar = this.f7175I;
        W5.b bVarM = iVar.m(i8);
        W5.a aVar = (W5.a) ((List) iVar.f2977H).get(bVarM.f7495a);
        int i9 = bVarM.f7498d;
        if (i9 != 1) {
            return i9 != 2 ? i9 : iVar.m(i8).f7498d;
        }
        return ((R5.b) aVar.f7493H.get(bVarM.f7496b)).f6312J == 1 ? 4 : 3;
    }

    @Override // O1.C
    public final void c(c0 c0Var, int i8) {
        i iVar = this.f7175I;
        W5.b bVarM = iVar.m(i8);
        W5.a aVar = (W5.a) ((List) iVar.f2977H).get(bVarM.f7495a);
        if (b(i8) == 2) {
            ((e) ((X5.b) c0Var)).f6607b0.setText(aVar.f7492G);
            i iVar2 = this.f7176J.f7174b;
            boolean z7 = ((boolean[]) iVar2.f2978I)[((List) iVar2.f2977H).indexOf(aVar)];
            return;
        }
        int iB = b(i8);
        if (iB == 3 || iB == 4) {
            X5.a aVar2 = (X5.a) c0Var;
            R5.b bVar = (R5.b) aVar.f7493H.get(bVarM.f7496b);
            int i9 = bVar.f6312J;
            String str = bVar.f6310H;
            boolean z8 = this.f6609L;
            if (i9 == 1) {
                a aVar3 = (a) aVar2;
                aVar3.f6603a0.setText(str);
                boolean zBooleanValue = ((Boolean) bVar.f6311I).booleanValue();
                CheckBox checkBox = aVar3.f6604b0;
                checkBox.setChecked(zBooleanValue);
                if (!z8) {
                    checkBox.setClickable(false);
                    return;
                }
                checkBox.setClickable(true);
                checkBox.setTag(bVar);
                checkBox.setOnClickListener(this);
                return;
            }
            d dVar = (d) aVar2;
            dVar.f6605a0.setText(str);
            String str2 = bVar.f6311I + HttpUrl.FRAGMENT_ENCODE_SET;
            TextView textView = dVar.f6606b0;
            textView.setText(str2);
            if (z8) {
                textView.setTextColor(-1);
                View view = aVar2.f5353G;
                view.setTag(bVar);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // O1.C
    public final c0 d(RecyclerView recyclerView, int i8) {
        if (i8 == 2) {
            View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.row_preference_title, (ViewGroup) recyclerView, false);
            e eVar = new e(viewInflate);
            viewInflate.setOnClickListener(eVar);
            eVar.f6607b0 = (TextView) viewInflate.findViewById(R.id.prefs_title);
            eVar.f7688a0 = this;
            return eVar;
        }
        if (i8 != 3 && i8 != 4) {
            throw new IllegalArgumentException("viewType is not valid");
        }
        if (i8 == 3) {
            View viewInflate2 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.row_preference_default, (ViewGroup) recyclerView, false);
            d dVar = new d(viewInflate2);
            dVar.f6605a0 = (TextView) viewInflate2.findViewById(R.id.key);
            dVar.f6606b0 = (TextView) viewInflate2.findViewById(R.id.value);
            return dVar;
        }
        if (i8 != 4) {
            return null;
        }
        View viewInflate3 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.row_preference_boolean, (ViewGroup) recyclerView, false);
        a aVar = new a(viewInflate3);
        aVar.f6603a0 = (TextView) viewInflate3.findViewById(R.id.key);
        aVar.f6604b0 = (CheckBox) viewInflate3.findViewById(R.id.value);
        return aVar;
    }

    public final void f() {
        for (int size = ((List) this.f7175I.f2977H).size() - 1; size >= 0; size--) {
            V5.a aVar = this.f7176J;
            i iVar = aVar.f7174b;
            if (((boolean[]) iVar.f2978I)[iVar.m(size).f7495a]) {
                return;
            }
            i iVar2 = aVar.f7174b;
            W5.b bVarM = iVar2.m(size);
            if (((boolean[]) iVar2.f2978I)[bVarM.f7495a]) {
                aVar.a(bVarM);
            } else {
                aVar.b(bVarM);
            }
        }
        this.f5265G.a();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        R5.b bVar = (R5.b) view.getTag();
        int iB = h.b(bVar.f6312J);
        String str = bVar.f6310H;
        c cVar = this.f6608K;
        if (iB == 0) {
            CheckBox checkBox = (CheckBox) view;
            if (cVar != null) {
                boolean zIsChecked = checkBox.isChecked();
                ((DebugActivity) cVar).f24582g0.getClass();
                String str2 = bVar.f6309G;
                Q5.b bVarB = Q5.b.b();
                Map map = bVarB.f6042b;
                bVarB.f6041a.getSharedPreferences(str2, 0).edit().putBoolean(str, zIsChecked).apply();
                bVar.f6311I = Boolean.valueOf(zIsChecked);
                return;
            }
            return;
        }
        if (cVar != null) {
            DebugActivity debugActivity = (DebugActivity) ((g) ((DebugActivity) cVar).f24582g0.f5730H);
            debugActivity.getClass();
            C2996k c2996k = new C2996k(debugActivity);
            View viewInflate = LayoutInflater.from(debugActivity).inflate(R.layout.dialog_edit_value, (ViewGroup) null);
            EditText editText = (EditText) viewInflate.findViewById(R.id.valueText);
            ((TextView) viewInflate.findViewById(R.id.keyText)).setText(str);
            editText.setText(String.valueOf(bVar.f6311I));
            c2996k.setView(viewInflate);
            DialogInterfaceOnClickListenerC0944Ub dialogInterfaceOnClickListenerC0944Ub = new DialogInterfaceOnClickListenerC0944Ub(debugActivity, bVar, editText);
            C2992g c2992g = c2996k.f25100a;
            c2992g.f25051f = "Save";
            c2992g.f25052g = dialogInterfaceOnClickListenerC0944Ub;
            c2992g.f25053h = "Cancel";
            c2992g.f25054i = null;
            c2996k.create().show();
        }
    }
}
