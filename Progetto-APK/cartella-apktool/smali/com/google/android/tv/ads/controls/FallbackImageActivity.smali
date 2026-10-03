.class public final Lcom/google/android/tv/ads/controls/FallbackImageActivity;
.super Lf/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/o;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, LY/v;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x2

    .line 20
    const-string v4, "render_error_message"

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    const-string v5, "icon_click_fallback_images"

    .line 32
    .line 33
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lt4/b;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p1, Lt4/b;->G:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_0

    .line 48
    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Lt4/a;

    .line 54
    .line 55
    iget-object v5, v5, Lt4/a;->K:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v5, :cond_0

    .line 58
    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lt4/a;

    .line 64
    .line 65
    iget-object v3, p1, Lt4/a;->K:Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "wta_uri"

    .line 68
    .line 69
    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "wta_alt_text"

    .line 73
    .line 74
    iget-object p1, p1, Lt4/a;->I:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 92
    .line 93
    .line 94
    const/4 v3, 0x6

    .line 95
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->f(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 103
    .line 104
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->C(Landroid/content/Context;)Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/atv_ads_framework/O0;->l()Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->e()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->g(I)V

    .line 123
    .line 124
    .line 125
    const/4 v3, 0x5

    .line 126
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/atv_ads_framework/N0;->f(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Lcom/google/android/gms/internal/atv_ads_framework/T;->b()Lcom/google/android/gms/internal/atv_ads_framework/U;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 134
    .line 135
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->E(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    :goto_0
    iget-object p1, p0, LY/v;->X:Lf/S;

    .line 142
    .line 143
    invoke-virtual {p1}, Lf/S;->R()LY/K;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    new-instance v3, LY/a;

    .line 151
    .line 152
    invoke-direct {v3, p1}, LY/a;-><init>(LY/K;)V

    .line 153
    .line 154
    .line 155
    iput-boolean v1, v3, LY/a;->q:Z

    .line 156
    .line 157
    iget-object p1, v3, LY/a;->a:LY/F;

    .line 158
    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    iget-object v1, v3, LY/a;->b:Ljava/lang/ClassLoader;

    .line 162
    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    const-class v1, Lcom/google/android/tv/ads/controls/SideDrawerFragment;

    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1, v1}, LY/F;->a(Ljava/lang/String;)LY/s;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iget-object v1, p1, LY/s;->Y:LY/K;

    .line 176
    .line 177
    if-eqz v1, :cond_3

    .line 178
    .line 179
    iget-boolean v4, v1, LY/K;->F:Z

    .line 180
    .line 181
    if-nez v4, :cond_2

    .line 182
    .line 183
    iget-boolean v1, v1, LY/K;->G:Z

    .line 184
    .line 185
    if-nez v1, :cond_2

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 189
    .line 190
    const-string v0, "Fragment already added and state has been saved"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_3
    :goto_1
    iput-object v0, p1, LY/s;->M:Landroid/os/Bundle;

    .line 197
    .line 198
    const v0, 0x1020002

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v0, p1}, LY/a;->g(ILY/s;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v2}, LY/a;->d(Z)I

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 209
    .line 210
    const-string v0, "The FragmentManager must be attached to itshost to create a Fragment"

    .line 211
    .line 212
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1

    .line 216
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    const-string v0, "Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()"

    .line 219
    .line 220
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1
.end method
