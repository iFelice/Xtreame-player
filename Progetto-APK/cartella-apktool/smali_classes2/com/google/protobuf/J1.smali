.class public final Lcom/google/protobuf/J1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm2/i;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/O2;Lcom/google/protobuf/S2;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm2/i;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Lm2/i;-><init>(Lcom/google/protobuf/O2;Lcom/google/protobuf/S2;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/protobuf/J1;->a:Lm2/i;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/protobuf/J1;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lm2/i;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/S2;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/W0;->c(Lcom/google/protobuf/S2;ILjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/google/protobuf/S2;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {p0, v0, p2}, Lcom/google/protobuf/W0;->c(Lcom/google/protobuf/S2;ILjava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    add-int/2addr p0, p1

    .line 20
    return p0
.end method

.method public static b(Lcom/google/protobuf/z;Lm2/i;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/protobuf/S2;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/W0;->r(Lcom/google/protobuf/z;Lcom/google/protobuf/S2;ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Lm2/i;->J:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/google/protobuf/S2;

    .line 12
    .line 13
    const/4 p2, 0x2

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/W0;->r(Lcom/google/protobuf/z;Lcom/google/protobuf/S2;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
