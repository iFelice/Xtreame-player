.class public final Lcom/google/android/gms/internal/ads/Dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Fz;
.implements Lcom/google/android/gms/internal/ads/AE;
.implements Lcom/google/android/gms/internal/ads/xE;
.implements Lcom/google/android/gms/internal/ads/vE;
.implements Lcom/google/android/gms/internal/ads/bE;
.implements Lcom/google/android/gms/internal/ads/ZD;
.implements Lcom/google/android/gms/internal/ads/ME;


# instance fields
.field public final synthetic G:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Cw;)Lcom/google/android/gms/internal/ads/FE;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/RC;

    sget-object v0, Lcom/google/android/gms/internal/ads/FD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/sF;->B()Lcom/google/android/gms/internal/ads/qF;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/wF;->B()Lcom/google/android/gms/internal/ads/vF;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/AF;->B()Lcom/google/android/gms/internal/ads/zF;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/RC;->l:Lcom/google/android/gms/internal/ads/WC;

    .line 7
    iget v3, v3, Lcom/google/android/gms/internal/ads/WC;->c:I

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 9
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 10
    check-cast v4, Lcom/google/android/gms/internal/ads/AF;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/AF;->D(Lcom/google/android/gms/internal/ads/AF;I)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/AF;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 14
    check-cast v3, Lcom/google/android/gms/internal/ads/wF;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/wF;->F(Lcom/google/android/gms/internal/ads/wF;Lcom/google/android/gms/internal/ads/AF;)V

    .line 15
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RC;->m:Lcom/google/android/gms/internal/ads/Xu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    .line 16
    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 18
    check-cast v3, Lcom/google/android/gms/internal/ads/wF;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/wF;->G(Lcom/google/android/gms/internal/ads/wF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/wF;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 21
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 22
    check-cast v2, Lcom/google/android/gms/internal/ads/sF;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/sF;->G(Lcom/google/android/gms/internal/ads/sF;Lcom/google/android/gms/internal/ads/wF;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/VF;->B()Lcom/google/android/gms/internal/ads/UF;

    move-result-object v1

    .line 24
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RC;->l:Lcom/google/android/gms/internal/ads/WC;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/FD;->c(Lcom/google/android/gms/internal/ads/WC;)Lcom/google/android/gms/internal/ads/ZF;

    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 26
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 27
    check-cast v5, Lcom/google/android/gms/internal/ads/VF;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/VF;->H(Lcom/google/android/gms/internal/ads/VF;Lcom/google/android/gms/internal/ads/ZF;)V

    .line 28
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/RC;->n:Lcom/google/android/gms/internal/ads/Xu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    move-result-object v3

    array-length v5, v3

    .line 29
    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    move-result-object v3

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 31
    check-cast v4, Lcom/google/android/gms/internal/ads/VF;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/VF;->I(Lcom/google/android/gms/internal/ads/VF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/VF;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 34
    check-cast v3, Lcom/google/android/gms/internal/ads/sF;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/sF;->H(Lcom/google/android/gms/internal/ads/sF;Lcom/google/android/gms/internal/ads/VF;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/sF;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 37
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/WC;->e:Lcom/google/android/gms/internal/ads/VC;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/FD;->d(Lcom/google/android/gms/internal/ads/VC;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RC;->p:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3, v1, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    .line 39
    :sswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/uD;

    sget-object v0, Lcom/google/android/gms/internal/ads/yD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/uG;->B()Lcom/google/android/gms/internal/ads/tG;

    move-result-object v0

    .line 41
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/uD;->l:Lcom/google/android/gms/internal/ads/xD;

    .line 42
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yD;->b(Lcom/google/android/gms/internal/ads/xD;)Lcom/google/android/gms/internal/ads/wG;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 44
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 45
    check-cast v3, Lcom/google/android/gms/internal/ads/uG;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uG;->F(Lcom/google/android/gms/internal/ads/uG;Lcom/google/android/gms/internal/ads/wG;)V

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/uG;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 48
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/uD;->l:Lcom/google/android/gms/internal/ads/xD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 49
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/yD;->c(Lcom/google/android/gms/internal/ads/wD;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 50
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/uD;->m:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    .line 51
    :sswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/qD;

    sget-object v0, Lcom/google/android/gms/internal/ads/tD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/pG;->B()Lcom/google/android/gms/internal/ads/oG;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/ads/rG;->A()Lcom/google/android/gms/internal/ads/qG;

    move-result-object v2

    .line 54
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/qD;->l:Lcom/google/android/gms/internal/ads/sD;

    .line 55
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/sD;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 57
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 58
    check-cast v4, Lcom/google/android/gms/internal/ads/rG;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/rG;->E(Lcom/google/android/gms/internal/ads/rG;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/rG;

    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 61
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 62
    check-cast v3, Lcom/google/android/gms/internal/ads/pG;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/pG;->F(Lcom/google/android/gms/internal/ads/pG;Lcom/google/android/gms/internal/ads/rG;)V

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/pG;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    move-result-object v0

    .line 65
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/qD;->l:Lcom/google/android/gms/internal/ads/sD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/sD;->b:Lcom/google/android/gms/internal/ads/rD;

    .line 66
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/tD;->b(Lcom/google/android/gms/internal/ads/rD;)Lcom/google/android/gms/internal/ads/xG;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 67
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qD;->m:Ljava/lang/Integer;

    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/gms/internal/ads/Cw;)Ljava/lang/Object;
    .locals 9

    .line 68
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 69
    check-cast p1, Lcom/google/android/gms/internal/ads/AD;

    sget-object v0, Lcom/google/android/gms/internal/ads/BD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/LD;->f:LK3/X;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/google/android/gms/internal/ads/RD;

    .line 72
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/AD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 73
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/AD;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v4, v1, p1}, Lcom/google/android/gms/internal/ads/RD;-><init>(I[B[B)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/RD;

    .line 76
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/AD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 77
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 78
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/AD;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v3, v1, p1}, Lcom/google/android/gms/internal/ads/RD;-><init>(I[B[B)V

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/uD;

    sget-object v1, Lcom/google/android/gms/internal/ads/pD;->a:Lcom/google/android/gms/internal/ads/cE;

    .line 80
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/uD;->l:Lcom/google/android/gms/internal/ads/xD;

    .line 81
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xD;->b:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/EC;->a(Ljava/lang/String;)V

    throw v0

    .line 83
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/qD;

    sget-object v1, Lcom/google/android/gms/internal/ads/oD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 84
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qD;->l:Lcom/google/android/gms/internal/ads/sD;

    .line 85
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/sD;->a:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/EC;->a(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/kD;

    sget-object v0, Lcom/google/android/gms/internal/ads/lD;->a:Lcom/google/android/gms/internal/ads/zE;

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/ads/LD;->f:LK3/X;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    .line 90
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 91
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 92
    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 93
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kD;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/LD;-><init>([B[B)V

    goto :goto_1

    .line 94
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/RD;

    .line 95
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/kD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 96
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 97
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kD;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/RD;-><init>(I[B[B)V

    :goto_1
    return-object v0

    .line 98
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/gD;

    .line 99
    new-instance v0, Lcom/google/android/gms/internal/ads/TD;

    .line 100
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/gD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 101
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 102
    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 103
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/gD;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/TD;-><init>([B[B)V

    return-object v0

    .line 104
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/ads/cD;

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/ads/RD;

    .line 106
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cD;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 107
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 108
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/cD;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/RD;-><init>([BLcom/google/android/gms/internal/ads/NG;)V

    return-object v0

    .line 109
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/ads/XC;

    sget-object v0, Lcom/google/android/gms/internal/ads/DG;->f:LK3/X;

    .line 110
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->f0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/ads/DG;

    .line 112
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/XC;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 113
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 114
    check-cast v1, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v1

    .line 115
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/XC;->l:Lcom/google/android/gms/internal/ads/aD;

    iget v2, v2, Lcom/google/android/gms/internal/ads/aD;->b:I

    .line 116
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/XC;->n:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/DG;-><init>(I[B[B)V

    return-object v0

    .line 117
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/ads/RC;

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/ads/EG;

    new-instance v1, Lcom/google/android/gms/internal/ads/CG;

    .line 120
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/RC;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 121
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 122
    check-cast v2, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v2

    .line 123
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/RC;->l:Lcom/google/android/gms/internal/ads/WC;

    iget v4, v3, Lcom/google/android/gms/internal/ads/WC;->c:I

    .line 124
    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/CG;-><init>([BI)V

    new-instance v2, Lcom/google/android/gms/internal/ads/MG;

    new-instance v4, Lcom/google/android/gms/internal/ads/Kq;

    .line 125
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/WC;->f:Lcom/google/android/gms/internal/ads/UC;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 126
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/RC;->n:Lcom/google/android/gms/internal/ads/Xu;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 127
    check-cast v7, Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object v7

    .line 128
    const-string v8, "HMAC"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/Kq;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 129
    iget v3, v3, Lcom/google/android/gms/internal/ads/WC;->d:I

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/ads/MG;-><init>(Lcom/google/android/gms/internal/ads/Kq;I)V

    .line 130
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RC;->o:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/EG;-><init>(Lcom/google/android/gms/internal/ads/CG;Lcom/google/android/gms/internal/ads/MG;I[B)V

    return-object v0

    .line 131
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/ads/eE;

    .line 132
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/eE;->l:Lcom/google/android/gms/internal/ads/FE;

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/ads/dE;->b:[I

    .line 134
    iget v5, v0, Lcom/google/android/gms/internal/ads/FE;->d:I

    .line 135
    invoke-static {v5}, Lu/h;->b(I)I

    move-result v5

    aget v1, v1, v5

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/cG;->A()Lcom/google/android/gms/internal/ads/aG;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 138
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 139
    check-cast v5, Lcom/google/android/gms/internal/ads/cG;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cG;->F(Lcom/google/android/gms/internal/ads/cG;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 141
    check-cast v5, Lcom/google/android/gms/internal/ads/cG;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cG;->G(Lcom/google/android/gms/internal/ads/cG;Lcom/google/android/gms/internal/ads/XG;)V

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 143
    check-cast v5, Lcom/google/android/gms/internal/ads/cG;

    iget v6, v0, Lcom/google/android/gms/internal/ads/FE;->d:I

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/cG;->H(Lcom/google/android/gms/internal/ads/cG;I)V

    .line 144
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cG;

    const-class v5, Lcom/google/android/gms/internal/ads/vC;

    .line 145
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/JC;->a(Lcom/google/android/gms/internal/ads/cG;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 146
    check-cast v1, Lcom/google/android/gms/internal/ads/vC;

    .line 147
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FE;->e:Lcom/google/android/gms/internal/ads/xG;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eE;->l:Lcom/google/android/gms/internal/ads/FE;

    if-eq v5, v4, :cond_6

    const/4 v4, 0x2

    if-eq v5, v4, :cond_5

    if-eq v5, v2, :cond_4

    if-ne v5, v3, :cond_3

    goto :goto_2

    .line 148
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unknown output prefix type "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/ads/tE;->a:Lcom/google/android/gms/internal/ads/NG;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    goto :goto_3

    .line 150
    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tE;->a(I)Lcom/google/android/gms/internal/ads/NG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    goto :goto_3

    .line 152
    :cond_6
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 153
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tE;->b(I)Lcom/google/android/gms/internal/ads/NG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/NG;->b()[B

    move-result-object p1

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/RD;

    .line 154
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/RD;-><init>(Lcom/google/android/gms/internal/ads/vC;[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Xu;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/Cz;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Ez;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/GE;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/aD;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/HD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/EF;->B()Lcom/google/android/gms/internal/ads/DF;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/GF;->B()Lcom/google/android/gms/internal/ads/FF;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, p1, Lcom/google/android/gms/internal/ads/aD;->b:I

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 30
    .line 31
    .line 32
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 33
    .line 34
    check-cast v4, Lcom/google/android/gms/internal/ads/GF;

    .line 35
    .line 36
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/GF;->D(Lcom/google/android/gms/internal/ads/GF;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/google/android/gms/internal/ads/GF;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 46
    .line 47
    .line 48
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 49
    .line 50
    check-cast v3, Lcom/google/android/gms/internal/ads/EF;

    .line 51
    .line 52
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/EF;->E(Lcom/google/android/gms/internal/ads/EF;Lcom/google/android/gms/internal/ads/GF;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 56
    .line 57
    .line 58
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 59
    .line 60
    check-cast v2, Lcom/google/android/gms/internal/ads/EF;

    .line 61
    .line 62
    iget v3, p1, Lcom/google/android/gms/internal/ads/aD;->a:I

    .line 63
    .line 64
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/EF;->F(Lcom/google/android/gms/internal/ads/EF;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/google/android/gms/internal/ads/EF;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aD;->c:Lcom/google/android/gms/internal/ads/ZC;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HD;->b(Lcom/google/android/gms/internal/ads/ZC;)Lcom/google/android/gms/internal/ads/xG;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :sswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/WC;

    .line 101
    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/FD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 103
    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/uF;->A()Lcom/google/android/gms/internal/ads/tF;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/ads/yF;->B()Lcom/google/android/gms/internal/ads/xF;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/ads/AF;->B()Lcom/google/android/gms/internal/ads/zF;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    iget v4, p1, Lcom/google/android/gms/internal/ads/WC;->c:I

    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 128
    .line 129
    .line 130
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 131
    .line 132
    check-cast v5, Lcom/google/android/gms/internal/ads/AF;

    .line 133
    .line 134
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/AF;->D(Lcom/google/android/gms/internal/ads/AF;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/google/android/gms/internal/ads/AF;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 144
    .line 145
    .line 146
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 147
    .line 148
    check-cast v4, Lcom/google/android/gms/internal/ads/yF;

    .line 149
    .line 150
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/yF;->E(Lcom/google/android/gms/internal/ads/yF;Lcom/google/android/gms/internal/ads/AF;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 154
    .line 155
    .line 156
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 157
    .line 158
    check-cast v3, Lcom/google/android/gms/internal/ads/yF;

    .line 159
    .line 160
    iget v4, p1, Lcom/google/android/gms/internal/ads/WC;->a:I

    .line 161
    .line 162
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/yF;->F(Lcom/google/android/gms/internal/ads/yF;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    check-cast v2, Lcom/google/android/gms/internal/ads/yF;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 172
    .line 173
    .line 174
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 175
    .line 176
    check-cast v3, Lcom/google/android/gms/internal/ads/uF;

    .line 177
    .line 178
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uF;->E(Lcom/google/android/gms/internal/ads/uF;Lcom/google/android/gms/internal/ads/yF;)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/ads/XF;->C()Lcom/google/android/gms/internal/ads/WF;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/FD;->c(Lcom/google/android/gms/internal/ads/WC;)Lcom/google/android/gms/internal/ads/ZF;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 190
    .line 191
    .line 192
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 193
    .line 194
    check-cast v4, Lcom/google/android/gms/internal/ads/XF;

    .line 195
    .line 196
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/XF;->G(Lcom/google/android/gms/internal/ads/XF;Lcom/google/android/gms/internal/ads/ZF;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 200
    .line 201
    .line 202
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 203
    .line 204
    check-cast v3, Lcom/google/android/gms/internal/ads/XF;

    .line 205
    .line 206
    iget v4, p1, Lcom/google/android/gms/internal/ads/WC;->b:I

    .line 207
    .line 208
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/XF;->H(Lcom/google/android/gms/internal/ads/XF;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/google/android/gms/internal/ads/XF;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 218
    .line 219
    .line 220
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 221
    .line 222
    check-cast v3, Lcom/google/android/gms/internal/ads/uF;

    .line 223
    .line 224
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/uF;->F(Lcom/google/android/gms/internal/ads/uF;Lcom/google/android/gms/internal/ads/XF;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    check-cast v1, Lcom/google/android/gms/internal/ads/uF;

    .line 232
    .line 233
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/WC;->e:Lcom/google/android/gms/internal/ads/VC;

    .line 241
    .line 242
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/FD;->d(Lcom/google/android/gms/internal/ads/VC;)Lcom/google/android/gms/internal/ads/xG;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 254
    .line 255
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    return-object p1

    .line 260
    :sswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/xD;

    .line 261
    .line 262
    sget-object v0, Lcom/google/android/gms/internal/ads/yD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 263
    .line 264
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yD;->b(Lcom/google/android/gms/internal/ads/xD;)Lcom/google/android/gms/internal/ads/wG;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/xD;->a:Lcom/google/android/gms/internal/ads/wD;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yD;->c(Lcom/google/android/gms/internal/ads/wD;)Lcom/google/android/gms/internal/ads/xG;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 298
    .line 299
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    return-object p1

    .line 304
    :sswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/sD;

    .line 305
    .line 306
    sget-object v0, Lcom/google/android/gms/internal/ads/tD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 307
    .line 308
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-static {}, Lcom/google/android/gms/internal/ads/rG;->A()Lcom/google/android/gms/internal/ads/qG;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/sD;->a:Ljava/lang/String;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 324
    .line 325
    .line 326
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 327
    .line 328
    check-cast v3, Lcom/google/android/gms/internal/ads/rG;

    .line 329
    .line 330
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/rG;->E(Lcom/google/android/gms/internal/ads/rG;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Lcom/google/android/gms/internal/ads/rG;

    .line 338
    .line 339
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/sD;->b:Lcom/google/android/gms/internal/ads/rD;

    .line 347
    .line 348
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tD;->b(Lcom/google/android/gms/internal/ads/rD;)Lcom/google/android/gms/internal/ads/xG;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 360
    .line 361
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    return-object p1

    .line 366
    nop

    .line 367
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xd -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public final e(Lcom/google/android/gms/internal/ads/GE;)Lcom/google/android/gms/internal/ads/GC;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/HD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 27
    .line 28
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 29
    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/EF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/EF;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/xc;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EF;->A()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xc;->s(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EF;->D()Lcom/google/android/gms/internal/ads/GF;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/GF;->A()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/xc;->l(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->y()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/ZC;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->G()Lcom/google/android/gms/internal/ads/aD;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 79
    .line 80
    const-string v1, "Parsing AesEaxParameters failed: "

    .line 81
    .line 82
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v1, "Wrong type URL in call to AesEaxProtoSerialization.parseParameters: "

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/FD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_2

    .line 119
    .line 120
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 125
    .line 126
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 127
    .line 128
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 129
    .line 130
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uF;->B(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/uF;

    .line 131
    .line 132
    .line 133
    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uF;->D()Lcom/google/android/gms/internal/ads/XF;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/XF;->B()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_1

    .line 143
    .line 144
    new-instance v1, Lcom/google/android/gms/internal/ads/rs;

    .line 145
    .line 146
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uF;->C()Lcom/google/android/gms/internal/ads/yF;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yF;->A()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rs;->e(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uF;->D()Lcom/google/android/gms/internal/ads/XF;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/XF;->A()I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rs;->h(I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uF;->C()Lcom/google/android/gms/internal/ads/yF;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/yF;->D()Lcom/google/android/gms/internal/ads/AF;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/AF;->A()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rs;->j(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uF;->D()Lcom/google/android/gms/internal/ads/XF;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/XF;->F()Lcom/google/android/gms/internal/ads/ZF;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ZF;->A()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/rs;->l(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uF;->D()Lcom/google/android/gms/internal/ads/XF;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XF;->F()Lcom/google/android/gms/internal/ads/ZF;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZF;->B()Lcom/google/android/gms/internal/ads/TF;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/FD;->a(Lcom/google/android/gms/internal/ads/TF;)Lcom/google/android/gms/internal/ads/UC;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/FD;->b(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/VC;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rs;->o()Lcom/google/android/gms/internal/ads/WC;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1

    .line 234
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 235
    .line 236
    const-string v0, "Only version 0 keys are accepted"

    .line 237
    .line 238
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p1

    .line 242
    :catch_1
    move-exception p1

    .line 243
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 244
    .line 245
    const-string v1, "Parsing AesCtrHmacAeadParameters failed: "

    .line 246
    .line 247
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    const-string v1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/yD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    .line 285
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 290
    .line 291
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 292
    .line 293
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 294
    .line 295
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wG;->D(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/wG;

    .line 296
    .line 297
    .line 298
    move-result-object v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_2 .. :try_end_2} :catch_2

    .line 299
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yD;->a(Lcom/google/android/gms/internal/ads/wG;Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/xD;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    return-object p1

    .line 308
    :catch_2
    move-exception p1

    .line 309
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 310
    .line 311
    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    .line 312
    .line 313
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    .line 315
    .line 316
    throw v0

    .line 317
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    const-string v1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    .line 328
    .line 329
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :sswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/tD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_4

    .line 350
    .line 351
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 356
    .line 357
    sget-object v1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 358
    .line 359
    sget-object v1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 360
    .line 361
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/rG;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/rG;

    .line 362
    .line 363
    .line 364
    move-result-object v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_3 .. :try_end_3} :catch_3

    .line 365
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rG;->D()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/tD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/rD;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    new-instance v1, Lcom/google/android/gms/internal/ads/sD;

    .line 378
    .line 379
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/sD;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/rD;)V

    .line 380
    .line 381
    .line 382
    return-object v1

    .line 383
    :catch_3
    move-exception p1

    .line 384
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 385
    .line 386
    const-string v1, "Parsing KmsAeadKeyFormat failed: "

    .line 387
    .line 388
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    const-string v1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: "

    .line 403
    .line 404
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    throw v0

    .line 412
    nop

    .line 413
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xe -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Lcom/google/android/gms/internal/ads/FE;)Lcom/google/android/gms/internal/ads/NC;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/FE;->e:Lcom/google/android/gms/internal/ads/xG;

    .line 6
    .line 7
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    .line 10
    .line 11
    sparse-switch v0, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/FD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 15
    .line 16
    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 25
    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 27
    .line 28
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 29
    .line 30
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/sF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/sF;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->A()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->D()Lcom/google/android/gms/internal/ads/wF;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wF;->A()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->E()Lcom/google/android/gms/internal/ads/VF;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/VF;->A()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 61
    .line 62
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->D()Lcom/google/android/gms/internal/ads/wF;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wF;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->e(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->E()Lcom/google/android/gms/internal/ads/VF;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/VF;->F()Lcom/google/android/gms/internal/ads/XG;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->h(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->D()Lcom/google/android/gms/internal/ads/wF;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wF;->D()Lcom/google/android/gms/internal/ads/AF;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/AF;->A()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->j(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->E()Lcom/google/android/gms/internal/ads/VF;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/VF;->E()Lcom/google/android/gms/internal/ads/ZF;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ZF;->A()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/rs;->l(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->E()Lcom/google/android/gms/internal/ads/VF;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/VF;->E()Lcom/google/android/gms/internal/ads/ZF;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ZF;->B()Lcom/google/android/gms/internal/ads/TF;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/FD;->a(Lcom/google/android/gms/internal/ads/TF;)Lcom/google/android/gms/internal/ads/UC;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 142
    .line 143
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/FD;->b(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/VC;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->o()Lcom/google/android/gms/internal/ads/WC;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v2, Lcom/google/android/gms/internal/ads/xc;

    .line 154
    .line 155
    const/4 v3, 0x0

    .line 156
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/wc;)V

    .line 157
    .line 158
    .line 159
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->H:Ljava/lang/Object;

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->D()Lcom/google/android/gms/internal/ads/wF;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wF;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sF;->E()Lcom/google/android/gms/internal/ads/VF;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VF;->F()Lcom/google/android/gms/internal/ads/XG;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xc;->F()Lcom/google/android/gms/internal/ads/RC;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1

    .line 204
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 205
    .line 206
    const-string v0, "Only version 0 keys inner HMAC keys are accepted"

    .line 207
    .line 208
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 213
    .line 214
    const-string v0, "Only version 0 keys inner AES CTR keys are accepted"

    .line 215
    .line 216
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 221
    .line 222
    const-string v0, "Only version 0 keys are accepted"

    .line 223
    .line 224
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 229
    .line 230
    const-string v0, "Parsing AesCtrHmacAeadKey failed"

    .line 231
    .line 232
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1

    .line 236
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 237
    .line 238
    const-string v0, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p1

    .line 244
    :sswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/yD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 245
    .line 246
    const-string v0, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    .line 247
    .line 248
    const-string v4, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 249
    .line 250
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-eqz p1, :cond_5

    .line 255
    .line 256
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 257
    .line 258
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 259
    .line 260
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 261
    .line 262
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/uG;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/uG;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uG;->A()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-nez v3, :cond_4

    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uG;->D()Lcom/google/android/gms/internal/ads/wG;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/yD;->a(Lcom/google/android/gms/internal/ads/wG;Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/xD;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/uD;->i2(Lcom/google/android/gms/internal/ads/xD;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/uD;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    return-object p1

    .line 285
    :catch_1
    move-exception p1

    .line 286
    goto :goto_0

    .line 287
    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 288
    .line 289
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-direct {v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :goto_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 302
    .line 303
    const-string v1, "Parsing KmsEnvelopeAeadKey failed: "

    .line 304
    .line 305
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    const-string v0, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    .line 312
    .line 313
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1

    .line 317
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/tD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 318
    .line 319
    const-string v0, "KmsAeadKey are only accepted with version 0, got "

    .line 320
    .line 321
    const-string v4, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 322
    .line 323
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-eqz p1, :cond_7

    .line 328
    .line 329
    :try_start_2
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 330
    .line 331
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 332
    .line 333
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 334
    .line 335
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/pG;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/pG;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pG;->A()I

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-nez v3, :cond_6

    .line 344
    .line 345
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/pG;->D()Lcom/google/android/gms/internal/ads/rG;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/rG;->D()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/tD;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/rD;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    new-instance v2, Lcom/google/android/gms/internal/ads/sD;

    .line 358
    .line 359
    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/sD;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/rD;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/qD;->i2(Lcom/google/android/gms/internal/ads/sD;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/qD;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    return-object p1

    .line 367
    :catch_2
    move-exception p1

    .line 368
    goto :goto_1

    .line 369
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 370
    .line 371
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-direct {v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v1
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_2 .. :try_end_2} :catch_2

    .line 383
    :goto_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 384
    .line 385
    const-string v1, "Parsing KmsAeadKey failed: "

    .line 386
    .line 387
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 392
    .line 393
    const-string v0, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey"

    .line 394
    .line 395
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw p1

    .line 399
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/eD;->b:Lcom/google/android/gms/internal/ads/eD;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/ZC;->b:Lcom/google/android/gms/internal/ads/ZC;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/VC;->b:Lcom/google/android/gms/internal/ads/VC;

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/UC;->d:Lcom/google/android/gms/internal/ads/UC;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget v5, p0, Lcom/google/android/gms/internal/ads/Dz;->G:I

    .line 11
    .line 12
    const/16 v6, 0x20

    .line 13
    .line 14
    const/16 v7, 0x10

    .line 15
    .line 16
    packed-switch v5, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/rs;->e(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/rs;->h(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/rs;->l(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/rs;->j(I)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->o()Lcom/google/android/gms/internal/ads/WC;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/rs;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rs;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/rs;->e(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/rs;->h(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/rs;->l(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/rs;->j(I)V

    .line 60
    .line 61
    .line 62
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rs;->o()Lcom/google/android/gms/internal/ads/WC;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0

    .line 71
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xc;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/xc;->l(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/xc;->s(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->y()V

    .line 83
    .line 84
    .line 85
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->G()Lcom/google/android/gms/internal/ads/aD;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/ads/xc;

    .line 93
    .line 94
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xc;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/xc;->l(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/xc;->s(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->y()V

    .line 104
    .line 105
    .line 106
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->G()Lcom/google/android/gms/internal/ads/aD;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    return-object v0

    .line 113
    :pswitch_3
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 114
    .line 115
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->m()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/xc;->t(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->x()V

    .line 125
    .line 126
    .line 127
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->H()Lcom/google/android/gms/internal/ads/fD;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0

    .line 134
    :pswitch_4
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 135
    .line 136
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->m()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/xc;->t(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->x()V

    .line 146
    .line 147
    .line 148
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/xc;->H()Lcom/google/android/gms/internal/ads/fD;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0

    .line 155
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
