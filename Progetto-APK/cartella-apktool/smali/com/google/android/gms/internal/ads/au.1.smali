.class public final Lcom/google/android/gms/internal/ads/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final a:Landroid/content/pm/ApplicationInfo;

.field public final b:Landroid/content/pm/PackageInfo;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/ads/Cn;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/Cn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/au;->a:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/au;->b:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/au;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/au;->d:Lcom/google/android/gms/internal/ads/Cn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/au;->c:Landroid/content/Context;

    .line 2
    .line 3
    check-cast p1, Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/au;->a:Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/au;->b:Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    move-object v5, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 17
    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    :goto_0
    const-string v6, "pn"

    .line 23
    .line 24
    invoke-virtual {p1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/au;->d:Lcom/google/android/gms/internal/ads/Cn;

    .line 28
    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const-string v8, "vc"

    .line 36
    .line 37
    invoke-virtual {p1, v8, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->a2:Lcom/google/android/gms/internal/ads/J7;

    .line 41
    .line 42
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 43
    .line 44
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 45
    .line 46
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    check-cast v7, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v6, v8, v5}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    if-nez v4, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 69
    .line 70
    :goto_1
    if-eqz v3, :cond_3

    .line 71
    .line 72
    const-string v4, "vnm"

    .line 73
    .line 74
    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->a2:Lcom/google/android/gms/internal/ads/J7;

    .line 78
    .line 79
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 80
    .line 81
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 82
    .line 83
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    const-string v4, "vn"

    .line 96
    .line 97
    invoke-virtual {v6, v4, v3}, Lcom/google/android/gms/internal/ads/Cn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 101
    .line 102
    sget-object v3, Lo3/O;->l:Lo3/J;

    .line 103
    .line 104
    invoke-static {v0}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/U1;->G:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v3, "dl"

    .line 132
    .line 133
    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catch_0
    nop

    .line 138
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 139
    .line 140
    const/16 v3, 0x1e

    .line 141
    .line 142
    if-lt v1, v3, :cond_7

    .line 143
    .line 144
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Yb:Lcom/google/android/gms/internal/ads/J7;

    .line 145
    .line 146
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 147
    .line 148
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 149
    .line 150
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Boolean;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0, v2}, Lb7/Z;->f(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-nez v0, :cond_4

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_4
    invoke-static {v0}, Lb7/Z;->o(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_5

    .line 182
    .line 183
    const-string v2, "ins_pn"

    .line 184
    .line 185
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catch_1
    move-exception p1

    .line 190
    goto :goto_4

    .line 191
    :cond_5
    const-string v1, "No installing package name found"

    .line 192
    .line 193
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :goto_3
    invoke-static {v0}, Lb7/Z;->u(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_6

    .line 205
    .line 206
    const-string v1, "ini_pn"

    .line 207
    .line 208
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_6
    const-string p1, "No initiating package name found"

    .line 213
    .line 214
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :goto_4
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 219
    .line 220
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 221
    .line 222
    const-string v1, "PackageInfoSignalsource.compose"

    .line 223
    .line 224
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    :goto_5
    return-void
.end method

.method public final zza()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
