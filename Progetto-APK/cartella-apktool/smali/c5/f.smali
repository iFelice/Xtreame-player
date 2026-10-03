.class public abstract Lc5/f;
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
    sget-object v1, Lcom/google/protobuf/S2;->L:Lcom/google/protobuf/Q2;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/google/protobuf/J1;

    .line 10
    .line 11
    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/J1;-><init>(Lcom/google/protobuf/O2;Lcom/google/protobuf/S2;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v3, Lc5/f;->a:Lcom/google/protobuf/J1;

    .line 15
    .line 16
    return-void
.end method
