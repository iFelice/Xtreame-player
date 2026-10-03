.class public final Lcom/google/android/gms/internal/ads/Hs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final a:Ll3/d1;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Z


# direct methods
.method public constructor <init>(Ll3/d1;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hs;->a:Ll3/d1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hs;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/Hs;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Hs;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/gms/internal/ads/Hs;->e:F

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/Hs;->f:I

    .line 15
    .line 16
    iput p7, p0, Lcom/google/android/gms/internal/ads/Hs;->g:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Hs;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/Hs;->i:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hs;->a:Ll3/d1;

    .line 4
    .line 5
    iget v1, v0, Ll3/d1;->K:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    const-string v2, "smart_w"

    .line 16
    .line 17
    const-string v5, "full"

    .line 18
    .line 19
    invoke-static {p1, v2, v5, v1}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget v1, v0, Ll3/d1;->H:I

    .line 23
    .line 24
    const/4 v2, -0x2

    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    const-string v2, "smart_h"

    .line 31
    .line 32
    const-string v5, "auto"

    .line 33
    .line 34
    invoke-static {p1, v2, v5, v1}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, v0, Ll3/d1;->P:Z

    .line 38
    .line 39
    const-string v2, "ene"

    .line 40
    .line 41
    invoke-static {p1, v2, v4, v1}, Lcom/bumptech/glide/c;->I(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 42
    .line 43
    .line 44
    const-string v1, "102"

    .line 45
    .line 46
    iget-boolean v2, v0, Ll3/d1;->S:Z

    .line 47
    .line 48
    const-string v5, "rafmt"

    .line 49
    .line 50
    invoke-static {p1, v5, v1, v2}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    const-string v1, "103"

    .line 54
    .line 55
    iget-boolean v2, v0, Ll3/d1;->T:Z

    .line 56
    .line 57
    invoke-static {p1, v5, v1, v2}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    const-string v1, "105"

    .line 61
    .line 62
    iget-boolean v2, v0, Ll3/d1;->U:Z

    .line 63
    .line 64
    invoke-static {p1, v5, v1, v2}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hs;->i:Z

    .line 68
    .line 69
    const-string v2, "inline_adaptive_slot"

    .line 70
    .line 71
    invoke-static {p1, v2, v4, v1}, Lcom/bumptech/glide/c;->I(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 72
    .line 73
    .line 74
    iget-boolean v1, v0, Ll3/d1;->U:Z

    .line 75
    .line 76
    const-string v2, "interscroller_slot"

    .line 77
    .line 78
    invoke-static {p1, v2, v4, v1}, Lcom/bumptech/glide/c;->I(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 79
    .line 80
    .line 81
    const-string v1, "format"

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hs;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1, v2, p1}, Lcom/bumptech/glide/c;->E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    const-string v1, "fluid"

    .line 89
    .line 90
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Hs;->c:Z

    .line 91
    .line 92
    const-string v5, "height"

    .line 93
    .line 94
    invoke-static {p1, v1, v5, v2}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hs;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    xor-int/2addr v2, v4

    .line 104
    const-string v6, "sz"

    .line 105
    .line 106
    invoke-static {p1, v6, v1, v2}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    const-string v1, "u_sd"

    .line 110
    .line 111
    iget v2, p0, Lcom/google/android/gms/internal/ads/Hs;->e:F

    .line 112
    .line 113
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 114
    .line 115
    .line 116
    const-string v1, "sw"

    .line 117
    .line 118
    iget v2, p0, Lcom/google/android/gms/internal/ads/Hs;->f:I

    .line 119
    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    const-string v1, "sh"

    .line 124
    .line 125
    iget v2, p0, Lcom/google/android/gms/internal/ads/Hs;->g:I

    .line 126
    .line 127
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Hs;->h:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    xor-int/2addr v2, v4

    .line 137
    const-string v4, "sc"

    .line 138
    .line 139
    invoke-static {p1, v4, v1, v2}, Lcom/bumptech/glide/c;->H(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Ll3/d1;->M:[Ll3/d1;

    .line 148
    .line 149
    const-string v4, "is_fluid_height"

    .line 150
    .line 151
    const-string v6, "width"

    .line 152
    .line 153
    if-nez v2, :cond_2

    .line 154
    .line 155
    new-instance v2, Landroid/os/Bundle;

    .line 156
    .line 157
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 158
    .line 159
    .line 160
    iget v3, v0, Ll3/d1;->H:I

    .line 161
    .line 162
    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    iget v3, v0, Ll3/d1;->K:I

    .line 166
    .line 167
    invoke-virtual {v2, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    iget-boolean v0, v0, Ll3/d1;->O:Z

    .line 171
    .line 172
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_2
    :goto_2
    array-length v0, v2

    .line 180
    if-ge v3, v0, :cond_3

    .line 181
    .line 182
    aget-object v0, v2, v3

    .line 183
    .line 184
    new-instance v7, Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 187
    .line 188
    .line 189
    iget-boolean v8, v0, Ll3/d1;->O:Z

    .line 190
    .line 191
    invoke-virtual {v7, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    iget v8, v0, Ll3/d1;->H:I

    .line 195
    .line 196
    invoke-virtual {v7, v5, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 197
    .line 198
    .line 199
    iget v0, v0, Ll3/d1;->K:I

    .line 200
    .line 201
    invoke-virtual {v7, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    :goto_3
    const-string v0, "valid_ad_sizes"

    .line 211
    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method
