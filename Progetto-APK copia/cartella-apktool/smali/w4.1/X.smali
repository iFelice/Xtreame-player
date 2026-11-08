.class public abstract Lw4/X;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/protobuf/J1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/protobuf/S2;->J:Lcom/google/protobuf/O2;

    .line 2
    .line 3
    sget-object v1, Lcom/google/protobuf/S2;->I:Lcom/google/protobuf/S2;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/google/protobuf/J1;

    .line 12
    .line 13
    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/J1;-><init>(Lcom/google/protobuf/O2;Lcom/google/protobuf/S2;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sput-object v3, Lw4/X;->a:Lcom/google/protobuf/J1;

    .line 17
    .line 18
    return-void
.end method
