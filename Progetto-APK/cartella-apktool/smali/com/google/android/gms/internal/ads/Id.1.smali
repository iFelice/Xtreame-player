.class public final Lcom/google/android/gms/internal/ads/Id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Lo3/K;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo3/K;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "-1"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Id;->d:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/Id;->e:I

    .line 10
    .line 11
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Id;->b:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Id;->c:Lo3/K;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Id;->a:Landroid/content/Context;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->s0:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v2, 0x31

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eq p1, v2, :cond_0

    .line 36
    .line 37
    const-string p1, "-1"

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eq p1, v2, :cond_0

    .line 59
    .line 60
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Id;->c:Lo3/K;

    .line 61
    .line 62
    check-cast p1, Lo3/L;

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lo3/L;->h(Z)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->J5:Lcom/google/android/gms/internal/ads/J7;

    .line 68
    .line 69
    iget-object p2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Id;->a:Landroid/content/Context;

    .line 86
    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    const-string p2, "OfflineUpload.db"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "IABTCF_PurposeConsents"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->u0:Lcom/google/android/gms/internal/ads/J7;

    .line 4
    .line 5
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 6
    .line 7
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 8
    .line 9
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v3, "gad_has_consent_for_cookies"

    .line 20
    .line 21
    const-string v4, "-1"

    .line 22
    .line 23
    const/4 v5, -0x1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    :try_start_1
    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Id;->a:Landroid/content/Context;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Id;->c:Lo3/K;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :try_start_2
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    move-object p2, v6

    .line 42
    check-cast p2, Lo3/L;

    .line 43
    .line 44
    invoke-virtual {p2}, Lo3/L;->s()V

    .line 45
    .line 46
    .line 47
    iget p2, p2, Lo3/L;->m:I

    .line 48
    .line 49
    if-eq p1, p2, :cond_0

    .line 50
    .line 51
    move-object p2, v6

    .line 52
    check-cast p2, Lo3/L;

    .line 53
    .line 54
    invoke-virtual {p2, v2}, Lo3/L;->h(Z)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, LJ6/r;->v(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    check-cast v6, Lo3/L;

    .line 61
    .line 62
    invoke-virtual {v6, p1}, Lo3/L;->e(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :cond_1
    const-string v0, "IABTCF_TCString"

    .line 70
    .line 71
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    move-object p2, v6

    .line 82
    check-cast p2, Lo3/L;

    .line 83
    .line 84
    invoke-virtual {p2}, Lo3/L;->s()V

    .line 85
    .line 86
    .line 87
    iget-object p2, p2, Lo3/L;->l:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_2

    .line 94
    .line 95
    move-object p2, v6

    .line 96
    check-cast p2, Lo3/L;

    .line 97
    .line 98
    invoke-virtual {p2, v2}, Lo3/L;->h(Z)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, LJ6/r;->v(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    check-cast v6, Lo3/L;

    .line 105
    .line 106
    invoke-virtual {v6, p1}, Lo3/L;->n(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-nez p2, :cond_4

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_4
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-nez p2, :cond_6

    .line 140
    .line 141
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Id;->d:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_6

    .line 148
    .line 149
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Id;->d:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Id;->a(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_5
    sget-object p2, Lcom/google/android/gms/internal/ads/Q7;->s0:Lcom/google/android/gms/internal/ads/J7;

    .line 156
    .line 157
    iget-object v0, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 158
    .line 159
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    check-cast p2, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    if-eqz p2, :cond_6

    .line 170
    .line 171
    if-eq p1, v5, :cond_6

    .line 172
    .line 173
    iget p2, p0, Lcom/google/android/gms/internal/ads/Id;->e:I

    .line 174
    .line 175
    if-eq p2, p1, :cond_6

    .line 176
    .line 177
    iput p1, p0, Lcom/google/android/gms/internal/ads/Id;->e:I

    .line 178
    .line 179
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/Id;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_0
    return-void

    .line 183
    :goto_1
    sget-object p2, Lk3/l;->A:Lk3/l;

    .line 184
    .line 185
    iget-object p2, p2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 186
    .line 187
    const-string v0, "AdMobPlusIdlessListener.onSharedPreferenceChanged"

    .line 188
    .line 189
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    const-string p2, "onSharedPreferenceChanged, errorMessage = "

    .line 193
    .line 194
    invoke-static {p2, p1}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method
