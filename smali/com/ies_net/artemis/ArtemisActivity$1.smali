.class Lcom/ies_net/artemis/ArtemisActivity$1;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity;->onStateUpdate(Lcom/google/android/play/core/assetpacks/AssetPackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisActivity;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$1;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$1;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$100(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/google/android/play/core/assetpacks/AssetPackManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$1;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$000(Lcom/ies_net/artemis/ArtemisActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackManager;->fetch(Ljava/util/List;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "resultCode"
        }
    .end annotation

    .line 78
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ies_net/artemis/ArtemisActivity$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
