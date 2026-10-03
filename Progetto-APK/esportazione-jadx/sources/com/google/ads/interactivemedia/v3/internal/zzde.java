package com.google.ads.interactivemedia.v3.internal;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzde implements zzdb {
    private final int[] zza = new int[2];

    @Override // com.google.ads.interactivemedia.v3.internal.zzdb
    public final JSONObject zza(View view) {
        if (view == null) {
            return zzdl.zza(0, 0, 0, 0);
        }
        int[] iArr = this.zza;
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(iArr);
        int[] iArr2 = this.zza;
        return zzdl.zza(iArr2[0], iArr2[1], width, height);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzdb
    public final void zzb(View view, JSONObject jSONObject, zzda zzdaVar, boolean z7, boolean z8) {
        int i8;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (!z7) {
                for (int i9 = 0; i9 < viewGroup.getChildCount(); i9++) {
                    zzdaVar.zza(viewGroup.getChildAt(i9), this, jSONObject, z8);
                }
                return;
            }
            HashMap map = new HashMap();
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(Float.valueOf(childAt.getZ()), arrayList);
                }
                arrayList.add(childAt);
            }
            ArrayList arrayList2 = new ArrayList(map.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            int i11 = 0;
            while (i11 < size) {
                ArrayList arrayList3 = (ArrayList) map.get((Float) arrayList2.get(i11));
                int size2 = arrayList3.size();
                int i12 = 0;
                while (true) {
                    i8 = i11 + 1;
                    if (i12 < size2) {
                        zzdaVar.zza((View) arrayList3.get(i12), this, jSONObject, z8);
                        i12++;
                    }
                }
                i11 = i8;
            }
        }
    }
}
