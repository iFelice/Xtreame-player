.class public final Lcom/google/protobuf/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final G:Lcom/google/protobuf/p1;

.field public final H:I

.field public final I:Lcom/google/protobuf/S2;

.field public final J:Z

.field public final K:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/p1;ILcom/google/protobuf/S2;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/protobuf/f1;->G:Lcom/google/protobuf/p1;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/protobuf/f1;->H:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/protobuf/f1;->J:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/google/protobuf/f1;->K:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/google/protobuf/f1;

    .line 2
    .line 3
    iget v0, p0, Lcom/google/protobuf/f1;->H:I

    .line 4
    .line 5
    iget p1, p1, Lcom/google/protobuf/f1;->H:I

    .line 6
    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method
