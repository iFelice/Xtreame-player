package p079k;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class j extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f25806a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f25807b;

    public j(k kVar) {
        this.f25807b = kVar;
        a();
    }

    public final void a() {
        o oVar = this.f25807b.f25810I;
        q qVar = oVar.f25842v;
        if (qVar != null) {
            oVar.i();
            ArrayList arrayList = oVar.f25830j;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                if (((q) arrayList.get(i8)) == qVar) {
                    this.f25806a = i8;
                    return;
                }
            }
        }
        this.f25806a = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final q getItem(int i8) {
        k kVar = this.f25807b;
        o oVar = kVar.f25810I;
        oVar.i();
        ArrayList arrayList = oVar.f25830j;
        kVar.getClass();
        int i9 = this.f25806a;
        if (i9 >= 0 && i8 >= i9) {
            i8++;
        }
        return (q) arrayList.get(i8);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        k kVar = this.f25807b;
        o oVar = kVar.f25810I;
        oVar.i();
        int size = oVar.f25830j.size();
        kVar.getClass();
        return this.f25806a < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return i8;
    }

    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f25807b.f25809H.inflate(R.layout.abc_list_menu_item_layout, viewGroup, false);
        }
        ((B) view).c(getItem(i8));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
