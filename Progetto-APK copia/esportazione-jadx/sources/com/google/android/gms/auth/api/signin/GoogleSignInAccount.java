package com.google.android.gms.auth.api.signin;

import M3.a;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GoogleSignInAccount extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new f1(11);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11665G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f11666H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11667I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f11668J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f11669K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Uri f11670L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f11671M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final long f11672N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final String f11673O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final List f11674P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f11675Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f11676R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final HashSet f11677S = new HashSet();

    public GoogleSignInAccount(int i8, String str, String str2, String str3, String str4, Uri uri, String str5, long j8, String str6, ArrayList arrayList, String str7, String str8) {
        this.f11665G = i8;
        this.f11666H = str;
        this.f11667I = str2;
        this.f11668J = str3;
        this.f11669K = str4;
        this.f11670L = uri;
        this.f11671M = str5;
        this.f11672N = j8;
        this.f11673O = str6;
        this.f11674P = arrayList;
        this.f11675Q = str7;
        this.f11676R = str8;
    }

    public static GoogleSignInAccount i(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl");
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j8 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i8 = 0; i8 < length; i8++) {
            hashSet.add(new Scope(1, jSONArray.getString(i8)));
        }
        String strOptString2 = jSONObject.optString("id");
        String strOptString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
        String strOptString4 = jSONObject.has("email") ? jSONObject.optString("email") : null;
        String strOptString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
        String strOptString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
        String strOptString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
        String string = jSONObject.getString("obfuscatedIdentifier");
        c.e(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, j8, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.f11671M = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
        return googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (googleSignInAccount.f11673O.equals(this.f11673O)) {
            HashSet hashSet = new HashSet(googleSignInAccount.f11674P);
            hashSet.addAll(googleSignInAccount.f11677S);
            HashSet hashSet2 = new HashSet(this.f11674P);
            hashSet2.addAll(this.f11677S);
            if (hashSet.equals(hashSet2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f11673O.hashCode() + 527;
        HashSet hashSet = new HashSet(this.f11674P);
        hashSet.addAll(this.f11677S);
        return (iHashCode * 31) + hashSet.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11665G);
        AbstractC2987b.Q(parcel, 2, this.f11666H);
        AbstractC2987b.Q(parcel, 3, this.f11667I);
        AbstractC2987b.Q(parcel, 4, this.f11668J);
        AbstractC2987b.Q(parcel, 5, this.f11669K);
        AbstractC2987b.P(parcel, 6, this.f11670L, i8);
        AbstractC2987b.Q(parcel, 7, this.f11671M);
        AbstractC2987b.v0(parcel, 8, 8);
        parcel.writeLong(this.f11672N);
        AbstractC2987b.Q(parcel, 9, this.f11673O);
        AbstractC2987b.U(parcel, 10, this.f11674P);
        AbstractC2987b.Q(parcel, 11, this.f11675Q);
        AbstractC2987b.Q(parcel, 12, this.f11676R);
        AbstractC2987b.p0(iX, parcel);
    }
}
