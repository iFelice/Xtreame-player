package p079k;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class l extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final o f25814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f25815b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f25817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayoutInflater f25818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f25819f;

    public l(o oVar, LayoutInflater layoutInflater, boolean z7, int i8) {
        this.f25817d = z7;
        this.f25818e = layoutInflater;
        this.f25814a = oVar;
        this.f25819f = i8;
        a();
    }

    public final void a() {
        o oVar = this.f25814a;
        q qVar = oVar.f25842v;
        if (qVar != null) {
            oVar.i();
            ArrayList arrayList = oVar.f25830j;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                if (((q) arrayList.get(i8)) == qVar) {
                    this.f25815b = i8;
                    return;
                }
            }
        }
        this.f25815b = -1;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final q getItem(int i8) {
        ArrayList arrayListL;
        boolean z7 = this.f25817d;
        o oVar = this.f25814a;
        if (z7) {
            oVar.i();
            arrayListL = oVar.f25830j;
        } else {
            arrayListL = oVar.l();
        }
        int i9 = this.f25815b;
        if (i9 >= 0 && i8 >= i9) {
            i8++;
        }
        return (q) arrayListL.get(i8);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList arrayListL;
        boolean z7 = this.f25817d;
        o oVar = this.f25814a;
        if (z7) {
            oVar.i();
            arrayListL = oVar.f25830j;
        } else {
            arrayListL = oVar.l();
        }
        return this.f25815b < 0 ? arrayListL.size() : arrayListL.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i8) {
        return i8;
    }

    @Override // android.widget.Adapter
    public final View getView(int i8, View view, ViewGroup viewGroup) {
        boolean z7 = false;
        if (view == null) {
            view = this.f25818e.inflate(this.f25819f, viewGroup, false);
        }
        int i9 = getItem(i8).f25852b;
        int i10 = i8 - 1;
        int i11 = i10 >= 0 ? getItem(i10).f25852b : i9;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        if (this.f25814a.m() && i9 != i11) {
            z7 = true;
        }
        listMenuItemView.setGroupDividerEnabled(z7);
        B b8 = (B) view;
        if (this.f25816c) {
            listMenuItemView.setForceShowIcon(true);
        }
        b8.c(getItem(i8));
        return view;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
