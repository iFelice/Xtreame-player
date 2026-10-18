.class public final Lcom/google/android/gms/internal/ads/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Om;

.field public final b:Lcom/google/android/gms/internal/ads/Om;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/Om;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cu;->a:Lcom/google/android/gms/internal/ads/Om;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cu;->b:Lcom/google/android/gms/internal/ads/Om;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/cu;->c:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/cu;->d:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cu;->e:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/cu;->f:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cu;->e:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cu;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cu;->e:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const-string v0, "pii"

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/bumptech/glide/c;->z(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cu;->f:Z

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->K2:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 22
    .line 23
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    :cond_1
    if-eqz v2, :cond_3

    .line 38
    .line 39
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->M2:Lcom/google/android/gms/internal/ads/J7;

    .line 40
    .line 41
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 42
    .line 43
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cu;->a:Lcom/google/android/gms/internal/ads/Om;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Om;->r()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Ljava/lang/String;

    .line 68
    .line 69
    const-string v5, "paidv1_id_android"

    .line 70
    .line 71
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Ljava/time/Instant;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Hf;->e(Ljava/time/Instant;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    const-string v5, "paidv1_creation_time_android"

    .line 83
    .line 84
    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    :cond_3
    if-nez v2, :cond_4

    .line 88
    .line 89
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->L2:Lcom/google/android/gms/internal/ads/J7;

    .line 90
    .line 91
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 92
    .line 93
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 94
    .line 95
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/lang/Boolean;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    :cond_4
    if-eqz v2, :cond_7

    .line 108
    .line 109
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->N2:Lcom/google/android/gms/internal/ads/J7;

    .line 110
    .line 111
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 112
    .line 113
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 114
    .line 115
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_7

    .line 126
    .line 127
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cu;->b:Lcom/google/android/gms/internal/ads/Om;

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Om;->r()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_6

    .line 134
    .line 135
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v3, Ljava/lang/String;

    .line 138
    .line 139
    const-string v4, "paidv2_id_android"

    .line 140
    .line 141
    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Om;->I:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v2, Ljava/time/Instant;

    .line 147
    .line 148
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Hf;->e(Ljava/time/Instant;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    const-string v4, "paidv2_creation_time_android"

    .line 153
    .line 154
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cu;->c:Z

    .line 158
    .line 159
    const-string v3, "paidv2_pub_option_android"

    .line 160
    .line 161
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/cu;->d:Z

    .line 165
    .line 166
    const-string v3, "paidv2_user_option_android"

    .line 167
    .line 168
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    .line 170
    .line 171
    :cond_7
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_8

    .line 176
    .line 177
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    :goto_0
    return-void
.end method
