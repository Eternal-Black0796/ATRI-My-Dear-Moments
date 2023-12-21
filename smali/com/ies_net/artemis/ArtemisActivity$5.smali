.class Lcom/ies_net/artemis/ArtemisActivity$5;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity;->InAppBilling(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 305
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "Artemis"

    const-string v1, "Purchase onBillingServiceDisconnected"

    .line 395
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase onBillingSetupFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Artemis"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 316
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$600(Lcom/ies_net/artemis/ArtemisActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string v1, "inapp"

    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 321
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$1000(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v1, Lcom/ies_net/artemis/ArtemisActivity$5$1;

    invoke-direct {v1, p0}, Lcom/ies_net/artemis/ArtemisActivity$5$1;-><init>(Lcom/ies_net/artemis/ArtemisActivity$5;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
