.class public final Lcom/google/android/gms/internal/pal/B4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lm2/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v1, p1, Lm2/i;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/Map;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/B4;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v1, p1, Lm2/i;->I:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/B4;->b:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    iget-object v1, p1, Lm2/i;->J:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/util/Map;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/B4;->c:Ljava/util/HashMap;

    .line 36
    .line 37
    new-instance v0, Ljava/util/HashMap;

    .line 38
    .line 39
    iget-object p1, p1, Lm2/i;->K:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/util/Map;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/B4;->d:Ljava/util/HashMap;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/pal/x4;)Lcom/google/android/gms/internal/pal/C4;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/z4;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/x4;->b:Lcom/google/android/gms/internal/pal/Q6;

    .line 4
    .line 5
    const-class v2, Lcom/google/android/gms/internal/pal/x4;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/z4;-><init>(Lcom/google/android/gms/internal/pal/Q6;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/B4;->b:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_6

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/pal/j4;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/android/gms/internal/pal/j4;->c:Lcom/google/android/gms/internal/pal/k4;

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/gms/internal/pal/G4;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v0, "Unable to parse OutputPrefixType: "

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/pal/H4;->a:Lcom/google/android/gms/internal/pal/v4;

    .line 34
    .line 35
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 36
    .line 37
    iget-object v2, p1, Lcom/google/android/gms/internal/pal/x4;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/x4;->c:Lcom/google/android/gms/internal/pal/r;

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pal/Q4;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/Q4;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/Q4;->m()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/Q4;->p()Lcom/google/android/gms/internal/pal/U4;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget v3, p1, Lcom/google/android/gms/internal/pal/x4;->f:I

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/U4;->m()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    add-int/lit8 v4, v3, -0x2

    .line 72
    .line 73
    const/4 v5, 0x1

    .line 74
    if-eq v4, v5, :cond_3

    .line 75
    .line 76
    const/4 v5, 0x2

    .line 77
    if-eq v4, v5, :cond_2

    .line 78
    .line 79
    const/4 v5, 0x3

    .line 80
    if-eq v4, v5, :cond_1

    .line 81
    .line 82
    const/4 v5, 0x4

    .line 83
    if-ne v4, v5, :cond_0

    .line 84
    .line 85
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->c:Lcom/google/android/gms/internal/pal/E4;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->A(I)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->e:Lcom/google/android/gms/internal/pal/E4;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->d:Lcom/google/android/gms/internal/pal/E4;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/pal/E4;->b:Lcom/google/android/gms/internal/pal/E4;

    .line 117
    .line 118
    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/pal/F4;->J0(ILcom/google/android/gms/internal/pal/E4;)Lcom/google/android/gms/internal/pal/F4;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/Q4;->q()Lcom/google/android/gms/internal/pal/r;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    new-instance v2, Lcom/google/android/gms/internal/pal/r1;

    .line 131
    .line 132
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/Q6;->a([B)Lcom/google/android/gms/internal/pal/Q6;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/16 v3, 0xd

    .line 137
    .line 138
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/x4;->e:Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/pal/C4;->I0(Lcom/google/android/gms/internal/pal/F4;Lcom/google/android/gms/internal/pal/r1;Ljava/lang/Integer;)Lcom/google/android/gms/internal/pal/C4;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    return-object p1

    .line 148
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 149
    .line 150
    const-string v0, "Only version 0 keys are accepted"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/pal/L; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 157
    .line 158
    const-string v0, "Parsing AesCmacKey failed"

    .line 159
    .line 160
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    const-string v0, "Wrong type URL in call to AesCmacParameters.parseParameters"

    .line 167
    .line 168
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/z4;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "No Key Parser for requested key type "

    .line 179
    .line 180
    const-string v2, " available"

    .line 181
    .line 182
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
.end method
