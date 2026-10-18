.class public final Lcom/google/protobuf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/p1;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/protobuf/n;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/n;->G:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/n;-><init>(I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/protobuf/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(I)Lcom/google/protobuf/o1;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/n;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/protobuf/t2;->b(I)Lcom/google/protobuf/t2;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :pswitch_0
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lcom/google/protobuf/b2;->H:Lcom/google/protobuf/b2;

    .line 16
    .line 17
    :goto_0
    return-object v1

    .line 18
    :pswitch_1
    invoke-static {p1}, Lcom/google/protobuf/T0;->b(I)Lcom/google/protobuf/T0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :pswitch_2
    if-eqz p1, :cond_4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    if-eq p1, v0, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    if-eq p1, v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v1, Lcom/google/protobuf/S0;->K:Lcom/google/protobuf/S0;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    sget-object v1, Lcom/google/protobuf/S0;->J:Lcom/google/protobuf/S0;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    sget-object v1, Lcom/google/protobuf/S0;->I:Lcom/google/protobuf/S0;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    sget-object v1, Lcom/google/protobuf/S0;->H:Lcom/google/protobuf/S0;

    .line 45
    .line 46
    :goto_1
    return-object v1

    .line 47
    :pswitch_3
    invoke-static {p1}, Lcom/google/protobuf/p0;->b(I)Lcom/google/protobuf/p0;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :pswitch_4
    invoke-static {p1}, Lcom/google/protobuf/g0;->b(I)Lcom/google/protobuf/g0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    :pswitch_5
    invoke-static {p1}, Lcom/google/protobuf/a0;->b(I)Lcom/google/protobuf/a0;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_6
    invoke-static {p1}, Lcom/google/protobuf/Y;->b(I)Lcom/google/protobuf/Y;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :pswitch_7
    invoke-static {p1}, Lcom/google/protobuf/U;->b(I)Lcom/google/protobuf/U;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    return-object p1

    .line 72
    :pswitch_8
    invoke-static {p1}, Lcom/google/protobuf/S;->b(I)Lcom/google/protobuf/S;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
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
