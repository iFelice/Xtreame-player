.class public final Lcom/google/protobuf/g1;
.super Lcom/google/protobuf/L0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/Q1;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/google/protobuf/Q1;

.field public final d:Lcom/google/protobuf/f1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Q1;Ljava/lang/Object;Lcom/google/protobuf/Q1;Lcom/google/protobuf/f1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    sget-object v0, Lcom/google/protobuf/S2;->L:Lcom/google/protobuf/Q2;

    .line 7
    .line 8
    iget-object v1, p4, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 9
    .line 10
    if-ne v1, v0, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p2, "Null messageDefaultInstance"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/protobuf/g1;->a:Lcom/google/protobuf/Q1;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/google/protobuf/g1;->b:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string p2, "Null containingTypeDefaultInstance"

    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/protobuf/S2;->G:Lcom/google/protobuf/T2;

    .line 6
    .line 7
    sget-object v2, Lcom/google/protobuf/T2;->O:Lcom/google/protobuf/T2;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, v0, Lcom/google/protobuf/f1;->G:Lcom/google/protobuf/p1;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/google/protobuf/p1;->b(I)Lcom/google/protobuf/o1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/protobuf/S2;->G:Lcom/google/protobuf/T2;

    .line 6
    .line 7
    sget-object v1, Lcom/google/protobuf/T2;->O:Lcom/google/protobuf/T2;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/google/protobuf/o1;

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/google/protobuf/o1;->a()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    return-object p1
.end method
